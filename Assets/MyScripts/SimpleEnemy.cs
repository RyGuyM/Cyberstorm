using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SimpleEnemy : MonoBehaviour {
	// Animation clips for the simple enemy.
	public AnimationClip toMoveAnimation;
	public AnimationClip attackPlayerAnimation;
	public AnimationClip runAnimation;
	
	// Movement target, movement speed, and the rotation speed.
	public Transform target;
	public Transform player;
	public float moveSpeed;
	public float rotationSpeed;
	
	// Ragdoll prefab.
	public GameObject ragdoll;
	
	public float accuracy;
	
	// Variables pertaining to the state of the enemy, are they moving, can they see the players...
	private Transform myTransform;
	
	private bool hasPath = false;
	
	private const float SEARCH_RATE = 1;	// How frequently to look for a new target
	private const float RANGE = 15;			// Attack range
	private const float ATTACK_RATE = 1;	// How frequently to deal damage
	private const int DAMAGE = 5;
	private float searchResetCount;
	
	private AStarAI movement;		// List of the three player characters for easy access
	private List<GameObject> decoys;
	private bool attacking;				// Enemy is either moving (false) or attacking (true).
	private int damage;					// How much damage this enemy will do;
	private float attackTime;			// Keeps track of last time damage was dealt to regulate 
										// regardless of framerate
	// Audio files
	public AudioClip enemyGunfire;
	public FootstepAudio steps;
	private bool targetDecoy;
	
	public void Awake(){
		targetDecoy = false;
		
		rotationSpeed = 5;
		attacking = false;
   	 	myTransform = transform; //cache transform data for easy access/preformance
		animation.Play(runAnimation.name);
		movement = this.GetComponent<AStarAI>();
		searchResetCount = SEARCH_RATE;
		attackTime = 0;
	}
	
	public void Update () {
		if(GetComponent<Health>().health == 0){
			DestroyEnemy(player);
		}
		// Check to see if there are any decoys on the field.
		decoys = player.GetComponent<AttackMain>().decoyList;
		
		searchResetCount -= Time.deltaTime * 1;
		if (searchResetCount <= 0){
			searchResetCount = SEARCH_RATE;
			hasPath = false;
		}
		
		/*
		 * Check the distance between enemy and all players. If the shortest distance is in "range"
		 * then stop movement and attack the player. Continue to check "range" and if the player is
		 * no longer in range then resume moving and searching
		 * 
		 */ 
		
		// Find the player character closest to the enemy
		float minVal = 9999;
		
		
		// Check if there is a decoy. If they have, set the closest decoy to the current target
		if (decoys.Count > 0){
			foreach (GameObject decoy in decoys){
				if (null != decoy && Vector3.Distance(decoy.transform.position, this.transform.position) < minVal){
					minVal = Vector3.Distance(decoy.transform.position, this.transform.position);
					target = decoy.transform;
					targetDecoy = true;
				}
			}
		}
		// Otherwise, search for a player to target
		else{
			minVal = Vector3.Distance(player.transform.position, myTransform.position);
			target = player.transform;
			targetDecoy = false;	
		}
		
		// If target is in range to attack
		if (minVal <= RANGE){
			movement.endPath();
			
			// Play audio file for weapon fire.
			// audio.PlayOneShot(enemyGunfire);
			
			// Do damage to the player
			if (Time.time - attackTime >= ATTACK_RATE){
				animation.Play(attackPlayerAnimation.name);
				GetComponent<AudioSource>().clip = enemyGunfire;
				GetComponent<AudioSource>().Play();
				// Check if attacking a decoy or a player
				if (!targetDecoy){
					target.GetComponent<Health>().doDamage(DAMAGE);
				}
				else{
					target.GetComponent<Health>().doDamage(DAMAGE);
					targetDecoy = false;
					hasPath = false;
				}
				attackTime = Time.time;
			}
			
			//rotate to look at the player
	   		myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
	   		Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
		}
		else{
			animation.Play(runAnimation.name);
			steps.SendMessage("Steps", SendMessageOptions.DontRequireReceiver);
			if (target != null){
				//rotate to look at the player
		   		myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
		   		Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
				
				// If AI does not currently have a path, give them one
				if (!hasPath && !attacking){
					movement.makeMove(target.position);
					hasPath = true;
				}
			}
		}
	}
	
	// Destroy the enemy NPC and replace it with a ragdoll.
	private void DestroyEnemy(Transform player)
	{
		player.GetComponent<ScoreKeeper>().score += 100;
		
		// Get the position and rotation of the object prior to destruction.
		Vector3 tempPosition = gameObject.transform.position;
		//tempPosition.y += 2.0f;
		Quaternion tempRotation = gameObject.transform.rotation;
		
		// Instantiate a rag-doll at the location of the enemy.
		Destroy(gameObject);
		GameObject enemyRagdoll = (GameObject)Instantiate( ragdoll, tempPosition, tempRotation);
		enemyRagdoll.rigidbody.AddForce(0, -1, -10);
	}
	
	IEnumerator WaitThenHavePlayerRun(float timeToWait){
		yield return new WaitForSeconds(timeToWait);
		attacking = false;
	}
}
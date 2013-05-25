using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AttackMain : MonoBehaviour
{
	// THe object which contains the muzzle flash for the gun.
	public Transform muzzleTarget;
	
	// Set up the normal attack for the player.
	private const float RANGE = 20;	// This player's attack range
	private const int DAMAGE = 10; // This player's damage dealt
	private const float ATTACK_RATE = 1; // How frequently this player attacks
	
	// Ability cooldown variable
	public const float grenadeCooldown = 5.0f;
	public const float decoyCooldown = 10.0f;
	private float grenadeCooldownTimer;
	private float decoyCooldownTimer;				
	
	// What object to instantiate when ability2 is invoked
	// The object necessary for ability1, defined in Unity Inspector
	public GameObject ability1;
	public GameObject ability2;
	public GameObject smokeEffect;
	public GameObject muzzleFlash;
	
	// Ability 1 which throws grenades and ability 2 which creates a decoy.
	public List<GameObject> decoyList;
	
	// Audio files.
	public AudioClip playerGunfire;
	public AudioClip playerKyle;
	public AudioClip throwGrenade;
	public AudioClip onCDWarning;
	
	// boolean values to keep track of the state of the players attack.
	private bool gunShotSound;
	
	void Awake () {
		decoyList = new List<GameObject>();
		gunShotSound = false;
		grenadeCooldownTimer = 0.0f;
		decoyCooldownTimer = 0.0f;
	}
	
	// Update is called once per frame
	void Update (){
		
		// Fire main gun.
		if(Input.GetMouseButton(0)){
			if(!gunShotSound){
				audio.PlayOneShot(playerGunfire);	// Gunfire audio
				gunShotSound = true;
				muzzleTarget.GetComponent<MuzzleFlashGenerator>().on = true;
				muzzleTarget.GetComponent<BulletGenerator>().on = true;
				StartCoroutine(WaitThenPlayNextSound(playerGunfire.length));
			}
		}
		
		// Perform updates to the cooldown timers for special abilities.
		if( grenadeCooldownTimer > 0 )
			grenadeCooldownTimer -= Time.deltaTime;
		else
			grenadeCooldownTimer = 0;
			
		if( decoyCooldownTimer > 0 )
			decoyCooldownTimer -= Time.deltaTime;
		else
			decoyCooldownTimer = 0;
			
		
		// Press '1' to throw a grenade. It is on a 5 second cooldown.
		if(Input.GetKeyDown(KeyCode.Alpha1)){
			if( grenadeCooldownTimer == 0 )
			{
				Ability1();
				grenadeCooldownTimer = grenadeCooldown;
			}	
			//Play the on Cooldown sound
			else{
				audio.PlayOneShot(onCDWarning);
			}
		}
		// Press '2' to deploy the decoy. It is on a 10-second cooldown.
		if(Input.GetKeyDown(KeyCode.Alpha2)){
			if( decoyCooldownTimer == 0 )
			{
				Ability2();
				decoyCooldownTimer = decoyCooldown;
			}
			//Play the on cooldown sound
			else{
				audio.PlayOneShot(onCDWarning);
			}
		}
	}
	
	// Create a grenade at a height of 2 where the player is positioned.
	public void Ability1(){
		audio.PlayOneShot(throwGrenade);
		Vector3 spawnZone = new Vector3(transform.position.x, transform.position.y+2, transform.position.z);
		Instantiate(ability1, spawnZone, transform.rotation);			
	}
	
	// Create a decoy at the position where the player is standing.
	public void Ability2(){
		audio.PlayOneShot(playerKyle);
		
		Instantiate(smokeEffect, transform.position, transform.rotation);
		decoyList.Add((GameObject)Instantiate(ability2, transform.position, transform.rotation));
	}
	
	// Check for dead decoys and remove them from the list of decoys.
	// Handle other necessary updates here too
	public void removeDecoy(GameObject decoy){
		decoyList.Remove(decoy);
	}
	
	IEnumerator WaitThenPlayNextSound(float timeToWait){
		
		yield return new WaitForSeconds(timeToWait);
		gunShotSound = false;
		muzzleTarget.GetComponent<MuzzleFlashGenerator>().on = false;
		muzzleTarget.GetComponent<BulletGenerator>().on = false;
		
	}
}
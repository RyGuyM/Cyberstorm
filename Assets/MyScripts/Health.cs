using UnityEngine;
using System.Collections;

/* This script will be placed on all characters. It can be modified by increasing
 * or decreasing the amount of health per character that uses it. Can also add specialty
 * features for refilling health.
 */ 

public class Health : MonoBehaviour {
	
	public float health, maxHealth, displayedHealth; // the last two are for the GUI component
	public AudioClip hurt;
	public string levelToLoad;

	
	// Use this for initialization
	
	void Awake () {
		health = 100.0F;
		maxHealth = health;
		displayedHealth = health;
	}
	
	void Start () {
		health = 100.0F;
		maxHealth = health;
		displayedHealth = health;
	}
	
	// Damage the character by the amount specified in the call/.
	public void doDamage(int damage){
		health -= damage;
		if(hurt != null)
			//Turns out that sound is really loud. I'm adjusting the volume here so that only this sound is affected
			GetComponent<AudioSource>().clip = hurt;
		if (health <= 0){
			health = 0.0F;
			if (this.name=="Enemy"){
				GameObject.FindGameObjectWithTag("Spawner").GetComponent<SpawnEnemy>().enemiesOnScreen--;
			}
			else if (this.name=="MainPlayer"){
				Destroy(this);
				Application.LoadLevel(levelToLoad);
			}
		}
		if(GetComponent<AudioSource>().clip != null)
			GetComponent<AudioSource>().Play ();
	}
	
	
	// Check to see if a decoy is dead. Used for removing from lists and destroying.
	public bool isDead(){
		return health == 0.0F;
	}
	
	public void fillHealth(){
		health = maxHealth;	
	}
}

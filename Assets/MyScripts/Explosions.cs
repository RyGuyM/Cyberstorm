using UnityEngine;
using System.Collections;

// This script is used for any explosions that occur in the game and then disappear.
public class Explosions : MonoBehaviour{
	// Audio clip for the explosion
	public AudioClip playerGrenade;
	
	private float startTime;
	private float emitTime = 5;
	private float destroyTime = 15;
	
	void Start(){
		audio.PlayOneShot(playerGrenade);	
		// The start of the explosion.
		startTime = Time.time;	
	}
	void Update(){
		// Stop emitting fire and smoke
		if(Time.time - startTime > emitTime){
			GetComponent<ParticleEmitter>().emit = false;
		}
		// Destroy the object a little while later.
		else if(Time.time - startTime > destroyTime){
			Destroy(gameObject);
		}
	}
}
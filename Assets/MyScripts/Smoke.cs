using UnityEngine;
using System.Collections;

public class Smoke : MonoBehaviour {
	// Controls the amount of time the smoke goes for.
	private float startTime;
	private float emitTime = 5;
	private float destroyTime = 15;
	
	void Start(){
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

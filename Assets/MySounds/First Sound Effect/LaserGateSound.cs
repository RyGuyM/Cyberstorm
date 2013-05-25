using UnityEngine;
using System.Collections;

/*
 * Handles the sounds for the laser gates animations. 
 * */

public class LaserGateSound : MonoBehaviour {
	
	public AudioClip open;
	public AudioClip close;
	
	private AudioSource laserGate;
	
	void Awake(){
		laserGate = GetComponent<AudioSource>();	
	}
	// Update is called once per frame
	void LaserUp(){
		laserGate.clip = open;
		laserGate.Play ();
	}
	
	void LaserDown(){
		laserGate.clip = close;
		laserGate.Play ();
	}
}

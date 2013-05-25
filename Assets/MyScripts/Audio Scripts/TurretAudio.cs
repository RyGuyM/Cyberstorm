using UnityEngine;
using System.Collections;

public class TurretAudio : MonoBehaviour {
	
	AudioSource source;
	public AudioClip onAwake;
	public AudioClip fire;
	
	void Awake(){
		source = GetComponent<AudioSource>();	
	}
	void Activate(){
		source.clip = onAwake;
		source.Play ();
	}
	void Shooting(){
		if(source.isPlaying == false){
			source.clip = fire;
			source.Play ();
			source.loop = true;
		}
		
	}
	
	void StopShooting(){
		source.loop = false;	
	}
}

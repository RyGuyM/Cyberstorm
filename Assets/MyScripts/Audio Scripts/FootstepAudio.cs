using UnityEngine;
using System.Collections;

public class FootstepAudio : MonoBehaviour {
	
	public AudioClip[] step;	
	private AudioSource source;	
	//Used for determining which footstep to play
	private Random random;

	// Use this for initialization
	void Awake () {
		source = GetComponent<AudioSource>();
		source.enabled = true;
	}

	
	void Steps() {
		if(source.isPlaying == false){
			source.clip = step[Random.Range(0, step.Length - 1)];
			source.Play();
		}			
	}
	
}

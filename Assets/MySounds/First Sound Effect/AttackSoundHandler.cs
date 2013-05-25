using UnityEngine;
using System.Collections;

public class AttackSoundHandler : MonoBehaviour {

	public AudioClip decoy;
	public AudioClip grende;
	
	void PlayDecoy(){
		GetComponent<AudioSource>().clip = decoy;
		GetComponent<AudioSource>().Play ();
	}	
	
	void PlayGrende(){
		GetComponent<AudioSource>().clip = grende;
		GetComponent<AudioSource>().Play ();
	}
}

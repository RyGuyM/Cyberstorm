using UnityEngine;
using System.Collections;

public class BackgroundMusic : MonoBehaviour {
	
	public AudioSource source;
	public AudioClip ambClip;
	public AudioClip fastClip;
	
	//Assures that we rotate the pieces properly
	public bool ambientLastPlayed = false;
	public bool settingUpPlay = false;
	
	//Used to give a bit of space between the tracks. 
	public float timeBetweenPlays = 10;
	
	// Use this for initialization
	void Start () {
		source = GetComponent<AudioSource>();		
	}
	
	// Update is called once per frame
	void Update () {
		if(source.isPlaying  != true){
			if(ambientLastPlayed == true){
				source.clip = fastClip;
				ambientLastPlayed = false;
			}
			else {
				source.clip = ambClip;
				ambientLastPlayed = true;
			}
			source.Play ();
		}
	}
}

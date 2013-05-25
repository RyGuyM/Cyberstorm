using UnityEngine;
using System.Collections;

// A decoy that distracts enemy for 30 seconds or until destroyed.
public class Decoy : MonoBehaviour {
	
	// The player that holds the list of decoys to be held.
	private Transform player;
	
	private float startTime;
	private float destroyTime = 30;
	
	// Use this for initialization
	void Start () {
		player = GameObject.FindWithTag("Player").transform;
		startTime = Time.time;
	}
	
	// If the timer is up on the decoy or it is destroyed remove it from the list and the game.
	void Update () {
		if(GetComponent<Health>().health <= 0 || Time.time - startTime > destroyTime){
			player.GetComponent<AttackMain>().decoyList.Remove(gameObject);
			Destroy(gameObject);
		}
	}
}

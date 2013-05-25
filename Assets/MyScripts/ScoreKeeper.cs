using UnityEngine;
using System.Collections;

// This is a simple script that you attach to the player to keep track of score.
public class ScoreKeeper : MonoBehaviour {
	
	public float score, points;
	// Use this for initialization
	void Start () {
		score = 0;
		points = 0;
	}
}

using UnityEngine;
using System.Collections;

public class MouseoverEffects : MonoBehaviour {

	public AudioClip audioFile;
	
	void OnMouseEnter()
	{
		renderer.material.color = new Color(1.0f, 0.8f, 0.0f, 1.0f);
		audio.PlayOneShot(audioFile);
	}
	
	void OnMouseExit()
	{
		renderer.material.color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
		
	}
}

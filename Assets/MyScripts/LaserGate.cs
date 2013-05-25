using UnityEngine;
using System.Collections;

public class LaserGate : MonoBehaviour
{
	// Holds the animations necessary to move the gate up and down.
	public Animation animationComponent;
	public AnimationClip laserUpAnimation;
	public AnimationClip laserDownAnimation;
	
	/* Target one is the area that holds the trigger zone and target two is the
	 * object that can activate the trigger.
	 */ 
	public Transform target, target2;
	
	//Used for sound handling
	public AudioClip gateUpSound;
	public AudioClip gateDownSound;
	
	// The amount of time the laser moves up.
	private float timeLaserUp;
	// The amount of time the laser stays up.
	public float timeLaserStaysUp = 5f;
	// States wether the fence is up or not.
	private bool laserUp = false;
	
	// Holds the gui script to prompt the player to activate the gate.
	public Camera cam;
	
	//Points required toa ctivate the laser gate.
	private float pointsRequired = 50;
	
	// The action to perform when the object is iteracted with.
	[ContextMenu("Test Interact")]
	void Interact(){
		TryLaserUp();
	}
	
	// If the laser is not already in the up position move the laser up and set state.
	void TryLaserUp(){
		if(!laserUp){
			audio.PlayOneShot(gateUpSound);
			animationComponent.Play(laserUpAnimation.name);
			StartCoroutine(WaitThenStartUpTime(laserUpAnimation.length));
			timeLaserUp = Time.time; 
		}
	}
	
	void Update(){
		// If the laser is up and the timer has run out then start to move the gate down.
		if(laserUp && Time.time - timeLaserUp > timeLaserStaysUp){
			audio.PlayOneShot(gateDownSound);
			animationComponent.Play(laserDownAnimation.name);
			StartCoroutine(WaitThenSetPlaneDown(laserDownAnimation.length));
		}
		// If the laser is not up and the player is in the trigger zone then try to put the gate up.
		else if(!laserUp && 
			target.GetComponent<SeeWhatsInMyTrigger>().collidersInThisTrigger.Contains(target2.collider)){
			cam.GetComponent<GUIScript>().powerUp2 = true;
			if(Input.GetKeyDown(KeyCode.Space) && target2.GetComponent<ScoreKeeper>().points >= pointsRequired){
				TryLaserUp ();
			}
		}else{
			cam.GetComponent<GUIScript>().powerUp2 = false;
		}
	}
	
	IEnumerator WaitThenSetPlaneDown(float timeToWait){
		yield return new WaitForSeconds(timeToWait);
		laserUp = false;
	}
	
	IEnumerator WaitThenStartUpTime(float timeToWait){
		yield return new WaitForSeconds(timeToWait);
		laserUp = true;
	}
}

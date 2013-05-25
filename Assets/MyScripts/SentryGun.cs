using UnityEngine;
using System.Collections;

public class SentryGun : MonoBehaviour {

	/* Target one is the area that holds the trigger zone and target two is the
	 * object that can activate the trigger.
	 */ 
	public Transform target, target2;
	
	// The cam holds the gui script thats prompts the user for the zone activation.
	public Camera cam;
	
	// Points needed to refill the players health to full.
	private float pointsRequired = 50;
	private float activationTime;
	private float timeItShootsFor = 15;
	private bool activated = false;
	
	void Update(){
		// If it is activated see if the time is up.
		if(activated){
			if(Time.time - activationTime > timeItShootsFor){
				activated = false;
				GetComponent<sentryGun>().targetRootName[0] = "None";
			}
		}
		// Otherwise check if the player is in the trigger and if so do they want to activate it.
		if(target.GetComponent<SeeWhatsInMyTrigger>().collidersInThisTrigger.Contains(target2.collider)){
			cam.GetComponent<GUIScript>().powerUp3 = true;
			if(Input.GetKeyDown(KeyCode.Space) && target2.GetComponent<ScoreKeeper>().points >= pointsRequired && !activated){
				target2.GetComponent<ScoreKeeper>().points -= 50;
				activated = true;
				activationTime = Time.time;
				GetComponent<sentryGun>().targetRootName[0] = "Enemy(Clone)";
				this.SendMessage("Activate", SendMessageOptions.DontRequireReceiver);
				
			}
		}
		// If the player is not in the trigger zone then do not show the dialog box.
		else{
			cam.GetComponent<GUIScript>().powerUp3 = false;
		}
		
	}
}

using UnityEngine;
using System.Collections;

public class HealthZone : MonoBehaviour
{
	/* Target one is the area that holds the trigger zone and target two is the
	 * object that can activate the trigger.
	 */ 
	public Transform target, target2;
	
	// The cam holds the gui script thats prompts the user for the zone activation.
	public Camera cam;
	
	// Points needed to refill the players health to full.
	private float pointsRequired = 50;
	
	void Update(){
		// Check if the player is in the trigger and if so do they want to activate it.
		if(target.GetComponent<SeeWhatsInMyTrigger>().collidersInThisTrigger.Contains(target2.collider)){
			cam.GetComponent<GUIScript>().powerUp1 = true;
			if(Input.GetKeyDown(KeyCode.Space) && target2.GetComponent<ScoreKeeper>().points >= pointsRequired){
				target2.GetComponent<Health>().health = target2.GetComponent<Health>().maxHealth;
				target2.GetComponent<ScoreKeeper>().points -= 50;
			}
		}
		// If the player is not in the trigger zone then do not show the dialog box.
		else{
			cam.GetComponent<GUIScript>().powerUp1 = false;
		}
	}
}
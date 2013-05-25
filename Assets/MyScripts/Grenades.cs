using UnityEngine;
using System.Collections;

public class Grenades : MonoBehaviour{
	
	// Holds the explosion and the player to receive points.
	public GameObject explosion;
	public Transform player;
	
	// Controls the rate of movement of the grenade.
	private float currentStep;
	private float stepAmount;
	
	// Controls the curve segment that the grenade moves upon.
	private Vector3 startPosition;
	private Vector3 secondPosition;
	private Vector3 thirdPosition;
	private Vector3 endPosition;
	
	// Vary the height of the curve depending on the throw distance.
	private float heightRatio;
	
	void Start(){
		player = GameObject.FindWithTag("Player").transform;
		
		// Find the position of the mouse and throw the grenade there.
		RaycastHit hit;
		Vector3 temp = new Vector3(0,0,0);
		LayerMask mask = -1;
		if (Physics.Raycast	(Camera.main.ScreenPointToRay (Input.mousePosition), out hit, Mathf.Infinity, mask)) {
			temp = hit.point;
		}
		endPosition = temp;
		startPosition = transform.position;
		// The height and speed is based on the throw distance.
		heightRatio = Vector3.Distance(startPosition, endPosition)*0.25F;
		stepAmount = 0.2F/heightRatio;
		secondPosition = new Vector3(startPosition.x, startPosition.y + heightRatio, startPosition.z);
		thirdPosition = new Vector3(endPosition.x, endPosition.y + heightRatio, endPosition.z);
		currentStep = 0.0F;
	}
	
	void Update(){
		if(currentStep > 1.0){
			// Play grenade detonation audio.
			Instantiate(explosion, transform.position, transform.rotation);
			
			// Check to see what is in the grenades trigger, if the object has a health script than damage it.
			foreach(Collider col in GetComponent<SeeWhatsInMyTrigger>().collidersInThisTrigger){
				if(col != null){
					Component healthScript = col.transform.root.GetComponent<Health>();
					if(healthScript != null){
						col.transform.root.GetComponent<Health>().health -= 50.0F;
						player.GetComponent<ScoreKeeper>().points += 50.0F;
					}
				}
			}
			Destroy(gameObject);
		}
		else{
			// Initialize the values for u, u squared, and u cubed. Limits the number of multiplications.
	    	float c = currentStep;
	    	float b = c * c;
	    	float a = b * c;
	    	
	    	// Calculate the r values for the equation based on the u value.
	   		float r0 = 1 - (3*c) + (3*b) - a;
	    	float r1 = (3*c) - (6*b) + 3*a;
	    	float r2 = (3*b) - (3*a);
	    	float r3 = a;
	    	
	    	float x = startPosition.x*r0 + secondPosition.x*r1 + thirdPosition.x*r2 + endPosition.x*r3;
	    	float y = startPosition.y*r0 + secondPosition.y*r1 + thirdPosition.y*r2 + endPosition.y*r3;
	    	float z = startPosition.z*r0 + secondPosition.z*r1 + thirdPosition.z*r2 + endPosition.z*r3;
			transform.position = new Vector3(x, y, z);
		}
		currentStep += stepAmount;
	}
}


using UnityEngine;
using System.Collections;
using System.Collections.Generic;


/* This camera follows the target around the screen while maintaining it's original height
 * in the world. It is lerped and smoothed to provide a nice transition as the character moves.
 */
public class CameraController : MonoBehaviour
{
	// Smooth the motion of the camera.
	public float smooth;
	
	// The target that the camera is pointing at.
	public Transform target;
	
	// The transform of the camera being controlled with this script.
	private Transform myTransform;
	
	void Awake(){
		// The transform of the camera.
		myTransform = transform;
		
		smooth = 5.0F;	
	}
	
	void Update (){
		// Update the cameras position based on the players position.
		myTransform.position = Vector3.Lerp(myTransform.position, new Vector3(target.position.x, myTransform.position.y, target.position.z-20), Time.deltaTime*smooth);
	}
}


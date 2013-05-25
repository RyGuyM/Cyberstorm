using UnityEngine;
using System.Collections;

/* Controls the players movement. The mouse rotates the player and the wasd keys move 
 * forward, backward and strafe.
 */ 
public class PlayerMovement : MonoBehaviour {
	// The camera that views the scene.
	public Camera cam;
	
	// The animations that the player is able to use.
	public AnimationClip idleAnimation;
	public AnimationClip moveForwardAnimation;
	public AnimationClip moveBackwardAnimation;
	public AnimationClip strafeLeftAnimation;
	public AnimationClip strafeRightAnimation;
	// Speed factor to adjust the objects movement speed.
	public float sensitivity = 5;
	
	private float x, z;
	
	// Speed factor to adjust the camera movement speed.
	public float sensitivityX = 5;
	public float sensitivityY = 5;
	
	// Allow the programmer to set the X rotation range.
	public float minimumX = -360;
	public float maximumX = 360;
	
	// Allow the programmer to set the Y rotation range.
	public float minimumY = -360;
	public float maximumY = 360;
	private float rotationX;
	private float rotationY;
	
	public float rotationSpeed;
	private Quaternion rot, xQuaternion, yQuaternion;
	private Vector3 mousePosition, relativePosition;
	
	//Used for Footsteps
	public GameObject footStepHandler;
	
	// Update is called once per frame
	void Update () {
		// See which key if any is being pressed and perform the correct movement and an
		if(Input.GetKey(KeyCode.A)){
			animation.Play(strafeLeftAnimation.name);	
				footStepHandler.SendMessage("Steps", SendMessageOptions.DontRequireReceiver);
		}
		else if(Input.GetKey(KeyCode.D)){
			animation.Play(strafeRightAnimation.name);	
			footStepHandler.SendMessage("Steps", SendMessageOptions.DontRequireReceiver);
		}
		else if(Input.GetKey(KeyCode.W)){
			animation.Play(moveForwardAnimation.name);	
			footStepHandler.SendMessage("Steps", SendMessageOptions.DontRequireReceiver);
		}
		else if(Input.GetKey(KeyCode.S)){
			animation.Play(moveBackwardAnimation.name);	
			footStepHandler.SendMessage("Steps", SendMessageOptions.DontRequireReceiver);
		}
		else{
			animation.Play(idleAnimation.name);
		}
		// Move the player based on the keyboard input.
		x = Input.GetAxis("Horizontal") * Time.deltaTime * sensitivity;
		z = Input.GetAxis("Vertical") * Time.deltaTime * sensitivity;
		transform.Translate(x, 0, z);
		
		// Find the relative position in pixel coordinates.
		float xx = Input.mousePosition.x - cam.WorldToScreenPoint(transform.position).x;
    	float zz = Input.mousePosition.y - cam.WorldToScreenPoint(transform.position).y;
		
		// Find the angle between them and create a quaternion based around the y axis.
    	float yRot = Mathf.Rad2Deg * Mathf.Atan2(xx, zz);
		yQuaternion = Quaternion.AngleAxis (yRot, Vector3.up);
   		
		// Rotate the player to point at the mouse cursor.
		transform.localRotation = yQuaternion;
	}
	
	// This section of code ensures that the rotation can continue around 360 degrees.
	public static float ClampAngle (float angle, float min, float max){
        if (angle < -360F)
            angle += 360F;
        if (angle > 360F)
            angle -= 360F;
        return Mathf.Clamp (angle, min, max);
    }
}

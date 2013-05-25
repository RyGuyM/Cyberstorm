// This script makes a helicopter rotate around a fixed point, 
// which is denoted by the GameObject target. The helicopter will always
// turn to face the target.

using UnityEngine;
using System.Collections;

public class ChopperMovement : MonoBehaviour {
	
	public GameObject target;
	
	private const float MOVE_SPEED = .5f;
	private const float ROTATION_SPEED = 4f;
	
	// assign these in the inspector
	public CharacterController charController;
	public Animation animation;
	
	
	// Use this for initialization
	void Start () {

		
	}
	
	// Update is called once per frame
	void Update () {
		animation.Play("Default Take");
		
		Vector3 dir = target.transform.position - transform.position;
		dir.x += 1;
			
	
		Quaternion temp = Quaternion.AngleAxis(270,Vector3.up);
		temp.x = 0;
		temp.z = 0;
		dir = temp * dir;
		
		transform.rotation = Quaternion.Slerp(transform.rotation,
	   						 Quaternion.LookRotation(dir), ROTATION_SPEED*Time.deltaTime);	
	
		transform.Translate(dir * MOVE_SPEED * Time.deltaTime, Space.World);
	

		
	}
}

using UnityEngine;
using System.Collections;

public class CircleRotation : MonoBehaviour
{
	public float rotationSpeed;
	private Quaternion rot, originalRotation;
	private int count = 0;
	
	// Use this for initialization
	void Start (){
		originalRotation = transform.localRotation;
	}
	
	// Update is called once per frame
	void Update (){
		
		rot = Quaternion.AngleAxis(rotationSpeed*count, Vector3.up);
		
		// Perform the rotation on the object.
		transform.localRotation = originalRotation * rot;
		count = (count + 1) % 180;
 	}
}


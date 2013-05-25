using UnityEngine;
using System.Collections;

public class SmoothCameraTrack : MonoBehaviour {

	public Transform cameraTransform;
	private Vector3 startCoords, destinationCoords;
	private Quaternion startRotation, destinationRotation;
	
	public float timeToTransition = 10.0f;
	private int quitMenu = 0;
	
	Color textColor, mouseoverColor;
	
	void Awake()
	{
		textColor = renderer.material.color;
		mouseoverColor = new Color(1.0f, 1.0f, 0.2f, 1.0f);	// Yellow
		
		// Parameters of the original camera state.
		startCoords = cameraTransform.position;
		startRotation = cameraTransform.rotation;
		
		// Parameters of the final camera state.
		destinationCoords = new Vector3( -105.54f, 56.05f, 620.31f );
		destinationRotation = Quaternion.Euler( 343.71f, 147.31f, 0.00f );
	}
	
	void OnMouseUp()
	{
		// Play audio.
		// yield new WaitForSeconds(0.35);
		if( quitMenu == 1 )
		{
			Application.Quit();
		}
		else
		{
			StartCoroutine(MoveToDestination(destinationCoords, destinationRotation, timeToTransition));
		}
	}
	
	IEnumerator MoveToDestination(Vector3 targetPosition, Quaternion targetRotation, float theTime)
	{
		float currentTime = 0.0f;
		float smooth = 4.00f;
		
		while( currentTime < theTime )
		{
			float tempTime = smooth * (currentTime / theTime);
			cameraTransform.position = Vector3.Slerp(startCoords, destinationCoords, tempTime);
			cameraTransform.rotation = Quaternion.Slerp(startRotation, destinationRotation, tempTime);
			currentTime += Time.deltaTime;
			yield return null;
		}
		cameraTransform.position = destinationCoords;
	}
}
using UnityEngine;
using System.Collections;

// Fade-in from black for the camera between scene transitions.
// Adopted from http://wiki.unity3d.com/index.php?title=FadeInOut#Source_.28FadeInOut.js.29

public class CameraFadeToBlack : MonoBehaviour
{

	private float alpha = 1.0f;
	private float fadeDirection = -1.0f;
	private int drawDepth = -1000;
	
	public Texture2D fadeTexture;	// Black texture.
	public float fadeRate = 0.3f;
	
	void OnGUI()
	{
		alpha += fadeDirection * fadeRate * Time.deltaTime;
		alpha = Mathf.Clamp01(alpha);
		
		Color tempColor = GUI.color;
		tempColor.a = alpha;
		GUI.color = tempColor;
		GUI.depth = drawDepth;
		if(!fadeTexture)
		{
			Debug.LogError("Must assign a texture for the fade-out!");
			return;
		}
		GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), fadeTexture);
	}
	
	void fadeIn()
	{
		fadeDirection = -1.0f;
	}
	
	void fadeOut()
	{
		fadeDirection = 1.0f;
	}
	
	void Start()
	{
		alpha = 1.0f;
		fadeIn();
	}
}
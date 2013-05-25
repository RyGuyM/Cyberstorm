using UnityEngine;
using System.Collections;

public class LoadLevel : MonoBehaviour {

	public string theLevel;
	public AudioClip audioFile;
	public int quitMenu = 0;	// Set to 1 for the Quit button.
								// Set as 0 for the Load button.
	
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
			Application.LoadLevel(theLevel);
		}
	}
}

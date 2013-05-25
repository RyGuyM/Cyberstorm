using UnityEngine;
using System.Collections;

public class LightFlicker : MonoBehaviour 
{
	public GameObject lightSource;
	public float flickerMin = 0.01f;
	public float flickerMax = 0.5f;
	public float lightMin = 0.5f;
	public float lightMax = 1.0f;
	
	void Start()
	{
		StartCoroutine(Flicker());
	}
	
	IEnumerator Flicker()
	{
		while(true)
		{
			lightSource.light.intensity = Random.Range(lightMin, lightMax);
			
			lightSource.light.enabled = true;
			yield return new WaitForSeconds( Random.Range(flickerMin, flickerMax) );
			
			lightSource.light.enabled = false;
			yield return new WaitForSeconds( Random.Range(flickerMin, flickerMax) );
		}
	}
}
using UnityEngine;
using System.Collections;

/* This script takes a muzzle flash, controls, and places it on the
 * end of the gun that it is firing from.
 */
public class MuzzleFlashGenerator : MonoBehaviour {
	
	// Contains the muzzle flash prefar.
	public GameObject muzzleFlashPrefab;
	// The materials used in the muzzle flash.
	public Material[] materials;
	// The rate at which the muzzle flash is generated.
	public float rate = 8.0F;
	// Whether the muzzle flash is activated or not.
	public bool on = false;
	
	private float nextMuzzleFlashTime;
	
	// Update is called once per frame
	void Update () {
		if (on){
			if(Time.time > nextMuzzleFlashTime){
				nextMuzzleFlashTime = Time.time + (1.0F / rate);
				GameObject newMuzzleFlash = (GameObject)Instantiate(muzzleFlashPrefab,transform.position,transform.rotation);
				int materialId = Mathf.RoundToInt(Random.Range(0,materials.Length));
				newMuzzleFlash.renderer.material = materials[materialId];
				newMuzzleFlash.transform.parent = transform;
			}
		}
	}
}

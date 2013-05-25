using UnityEngine;
using System.Collections;

public class BulletGenerator : MonoBehaviour {

	// Contains the muzzle flash prefar.
	public GameObject bulletPrefab;
	
	// The rate at which the muzzle flash is generated.
	public float rate = 20.0F;
	// Whether the muzzle flash is activated or not.
	public bool on = false;
	
	private float nextBulletTime;
	
	// Update is called once per frame
	void Update () {
		if (on){
			if(Time.time > nextBulletTime){
				nextBulletTime = Time.time + (1.0F / rate);
				Instantiate(bulletPrefab, transform.position, transform.rotation);
			}
		}
	}
}

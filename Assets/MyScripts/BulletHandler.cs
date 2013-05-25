using UnityEngine;
using System.Collections;

/* Handles tracking the bullets movement and its collision with possible targets.
 * It destorys the object if it hits a collider.
 */
public class BulletHandler : MonoBehaviour {
	// Variables that can be set to affect the speed and life of the bullet.
	public float bulletSpeed = 1.0F;
	public float life = 1.0F;
	
	// THe length of time the bullet is destroyed and the velocity at which it moves.
	private float destroyTime;
	private Vector3 velocity;
	private Transform player;
	
	// Use this for initialization
	void Start () {
		destroyTime = Time.time + life;
		velocity += transform.forward * bulletSpeed;
		player = GameObject.FindWithTag("Player").transform;
	}
	
	// Update is called once per frame
	void Update () {
		if(Time.time > destroyTime){
			Destroy(gameObject);
		}
		
		RaycastHit hit;
		if (Physics.Raycast(transform.position, transform.forward, out hit, bulletSpeed*Time.deltaTime)){
			Destroy(gameObject);
			
			// The health script of the hit object if there is one.
			Component healthScript = hit.transform.root.GetComponent<Health>();
			if(healthScript != null){
				hit.transform.root.GetComponent<Health>().health -= 20.0F;
				player.GetComponent<ScoreKeeper>().points += 10.0F;
			}
		}
		transform.position += velocity * Time.deltaTime;
	}
}

using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class SpawnEnemy : MonoBehaviour{
	public GameObject enemy;
	public GameObject player;	// Assign the player to this variable in the inspector
	
	private float startTime;
	private float timeBetweenSpawns;
	public int enemyCount; 
	public int enemiesOnScreen;
	public float  enemySpawnTime;
	
	public List<GameObject> spawnLocations;
	
	public List<GameObject> allEnemies;
	private const int NUMBER_OF_ENEMIES = 10000;	// The total number of enemies to spawn
	private const int ENEMIES_ON_SCREEN = 30;		// The number of enemies to try to have on screen at once
	private const int ENEMY_SPAWN_RATE = 3;			// The rate at which to spawn enemies
	
	public void Awake(){
		allEnemies = new List<GameObject>();
		enemySpawnTime = Time.time;
	}
	public void Start(){
		
	}
	public void Update(){
		if (enemiesOnScreen < ENEMIES_ON_SCREEN && Time.time - enemySpawnTime >= ENEMY_SPAWN_RATE){
			GameObject spawnPoint = new GameObject();
			float minVal = 9999;
			enemySpawnTime = Time.time;
			// Find the spawn nearest to the player
			foreach(GameObject spawn in spawnLocations){
				if (Vector3.Distance(spawn.transform.position, player.transform.position) < minVal){
					minVal = Vector3.Distance(spawn.transform.position, player.transform.position);
					spawnPoint = spawn;
				}
			}
			allEnemies.Add(CreateEnemy(spawnPoint));
		}
	}
	
	

	public GameObject CreateEnemy(GameObject spawn){
		GameObject enemyObject = (GameObject)Instantiate(enemy, spawn.transform.position, spawn.transform.rotation);
		enemyObject.GetComponent<SimpleEnemy>().player = GameObject.FindWithTag("Player").transform;
		enemyObject.GetComponent<SimpleEnemy>().target = enemyObject.GetComponent<SimpleEnemy>().player.transform;
		enemyCount--;
		enemiesOnScreen++;
		return enemyObject;
	}
}
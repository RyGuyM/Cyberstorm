using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GUIScript : MonoBehaviour {

	public float health, displayedHealth, maxHealth;
	public float score = 0.0F, points = 0.0F;
	
	// Holds the textures for the GUI script.
	public Texture2D background, backgroundSelected, casterA, casterB, meleeA, meleeB, rangedA, rangedB, mouseCursor, grenade, decoy;
	public Texture2D[] circles; 

	// Holds the GUIStyles for the GUI script.
	public GUIStyle backgroundGUIStyle;
	public GUIStyle spellButtonStyle;
	public GUIStyle healthBarStyle;
	public GUIStyle manaBarStyle;
	public GUIStyle barTextStyle;
	public GUIStyle coolDownTextStyle;
	
	int alternate;
	float timeTrack;
	private Rect[] toolbarRect;
	
	// Holds the player and the enemy spawner.
	private GameObject player;
	private GameObject spawner;
	
	// List of enemies and decoys
	private List<GameObject> enemies;
	private List<GameObject> decoys;
	
	// The display boxes for the power ups throughout the level.
	public bool powerUp1 = false;
	public bool powerUp2 = false;
	public bool powerUp3 = false;
	public bool powerUp4 = false;
	
	void Awake(){
		Screen.showCursor = false;
		
		enemies = new List<GameObject>();
		decoys = new List<GameObject>();
		
		alternate = 1;
		timeTrack = Time.time;
		toolbarRect = new Rect[3];
		toolbarRect[0] = 	new Rect(0, 
					  	Screen.height -background.height,
						background.width,background.height
						);
		toolbarRect[1]=	new Rect(toolbarRect[0].width + 5, 
						Screen.height -background.height,
						background.width,background.height
						);
		toolbarRect[2]=	new Rect(toolbarRect[0].width *2 + 10, 
						Screen.height -background.height,
						background.width,background.height
						);
		
		circles = new Texture2D[6];
		circles[0] = casterA;
		circles[1] = casterB;
		circles[2] = meleeA;
		circles[3] = meleeB;
		circles[4] = rangedA;
		circles[5] = rangedB;
		
	}
	
	void Start(){
		player = GameObject.FindGameObjectWithTag("Player");
		spawner = GameObject.FindGameObjectWithTag("Spawner");
		
		
		// Initialize to default values, which will be a player's starting health
		health = player.GetComponent<Health>().health;
		maxHealth = player.GetComponent<Health>().maxHealth;
		displayedHealth = player.GetComponent<Health>().displayedHealth;	
	}
	
	void Update(){
		if (Time.time - timeTrack > .5){
			timeTrack = Time.time;
			alternate *= -1;
		}
		
		// Update the current health for the player.
		health = player.GetComponent<Health>().health;
		score = player.GetComponent<ScoreKeeper>().score;
		points = player.GetComponent<ScoreKeeper>().points;
	}
	

	void OnGUI(){	
		// Update the enemies and the decoys.
		enemies = spawner.GetComponent<SpawnEnemy>().allEnemies;
		decoys = player.GetComponent<AttackMain>().decoyList;
		
		// Draw the mouse cursor
		GUI.Box(
			new Rect(Input.mousePosition.x, (Screen.height - Input.mousePosition.y), 20, 20), 
			mouseCursor, 
			backgroundGUIStyle
			);
		
		// Update the health bars for each player character
		for (int i = 0; i < 3; i++){
			GUI.Box(
				toolbarRect[i],
				(player ? backgroundSelected : background),
				backgroundGUIStyle
				);
			GUI.Box(
				toolbarRect[i],
				(alternate > 0 ? circles[i*2] : circles[i*2+1]),
				backgroundGUIStyle
				);
			if(i == 0){
				GUI.BeginGroup(new Rect(toolbarRect[i].x,toolbarRect[i].y,550,148));
				displayedHealth = Mathf.Lerp(displayedHealth, health, Time.deltaTime * 5);
				GUI.Box(new Rect(191, 45, 46, 46), grenade, backgroundGUIStyle);
				GUI.Box(new Rect(221, 45, 46, 46), decoy, backgroundGUIStyle);
				DrawBar(new Rect(156,35,125,10), displayedHealth, maxHealth, healthBarStyle, barTextStyle);
				GUI.EndGroup();	
			}
			else if(i == 1){
				GUI.BeginGroup(new Rect(toolbarRect[i].x,toolbarRect[i].y,550,148));
				GUI.Label(new Rect(166,45,125,50), "Score: " + score);
				GUI.EndGroup();
			}
			else{
				GUI.BeginGroup(new Rect(toolbarRect[i].x,toolbarRect[i].y,550,148));
				GUI.Label(new Rect(166,45,125,50), "Points: " + points);
				GUI.EndGroup();	
			}
		}
		
		// Display a health bar below each enemy on the screen		
		if (enemies.Count > 0){
			foreach (GameObject enemy in enemies){
				if(enemy != null){
					float health = enemy.GetComponent<Health>().health;
					float maxHealth = enemy.GetComponent<Health>().maxHealth;
					float displayedHealth = enemy.GetComponent<Health>().displayedHealth;
					Vector3 position = Camera.mainCamera.WorldToScreenPoint(enemy.transform.position);
					
					GUI.BeginGroup(new Rect(position.x-20,Screen.height - position.y,100,20));
					displayedHealth = Mathf.Lerp(displayedHealth, health, Time.deltaTime * 5);
					enemy.GetComponent<Health>().displayedHealth = (int)displayedHealth;
					DrawBar(new Rect(0,0,30,5), displayedHealth, maxHealth, healthBarStyle, barTextStyle);
					GUI.EndGroup();
				}
			}
		}
		
		// Display a health bar below each decoy on the screen	
		if (decoys.Count > 0){
			foreach (GameObject decoy in decoys){
				float health = decoy.GetComponent<Health>().health;
				float maxHealth = decoy.GetComponent<Health>().maxHealth;
				float displayedHealth = decoy.GetComponent<Health>().displayedHealth;
				Vector3 position = Camera.mainCamera.WorldToScreenPoint(decoy.transform.position);
				
				
				GUI.BeginGroup(new Rect(position.x-20,Screen.height - position.y,100,20));
				displayedHealth = Mathf.Lerp(displayedHealth, health, Time.deltaTime * 5);
				decoy.GetComponent<Health>().displayedHealth = (int)displayedHealth;
				DrawBar(new Rect(0,0,30,5), displayedHealth, maxHealth, healthBarStyle, barTextStyle);
				GUI.EndGroup();
			}
		}
		if(powerUp1){
			GUI.BeginGroup(new Rect(Screen.width/2.0F + 40.0F,Screen.height/2.0F - 40.0F,140,70));;
			GUI.TextArea(new Rect(0,0,140,70), "  Activate Health Refill\n\n\t  Cost: 50 Points\n\t   Press 'Space'");
			GUI.EndGroup();
		}
		if(powerUp2){
			GUI.BeginGroup(new Rect(Screen.width/2.0F + 40.0F,Screen.height/2.0F - 40.0F,140,70));;
			GUI.TextArea(new Rect(0,0,140,70), " Activate Electric Gate\n\n\t Cost: 50 Points\n\t   Press 'Space'");
			GUI.EndGroup();
		}
		if(powerUp3){
			GUI.BeginGroup(new Rect(Screen.width/2.0F + 40.0F,Screen.height/2.0F - 40.0F,140,70));;
			GUI.TextArea(new Rect(0,0,140,70), "   Activate Auto Turret\n\n\t  Cost: 50 Points\n\t   Press 'Space'");
			GUI.EndGroup();
		}
	}
	
	void DrawBar(Rect r, float displayedHealth, float maxHealth, GUIStyle style, GUIStyle textStyle){
		Rect actualHealth = new Rect(r.x,r.y, r.width * (displayedHealth/maxHealth), r.height);
		GUI.Label(actualHealth,"", style);
		//GUI.Label(r, string.Format("{0}/{1}", (int)health, (int)totalHealth), textStyle);
	}
}

[System.Serializable]
public class Spell{
	public float cooldown;
	public Texture2D icon;
	public float manaCost;
	public float lastCastTime = -1000;
}

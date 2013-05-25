using UnityEngine;
using System.Collections;
using Pathfinding;

public class AStarAI : MonoBehaviour {
	
	// The point to move to.
	public Vector3 targetPosition;
	
	private Seeker seeker;
	private CharacterController controller;
	
	// The calculated path.
	public Path path;
	
	// The AI's speed per second
	public float speed = 200;
	
	// The max distance from the AI to a waypoint for it to continue to the next waypoint
	public float nextWaypointDistance = 3;
	
	// The waypoint we are currently moving towards.
	private int currentWaypoint = 0;
	
	private Vector3 position;
	
	
	// Use this for initialization
	void Start () {
		/*Vector3 target = transform.position;
		target.z -= 30;
		*/
		
		controller = GetComponent<CharacterController>();
		targetPosition = transform.position;
		
		//Get a reference to the Seeker component we added earlier
		seeker = GetComponent<Seeker>();
		
		//Start a new path to the targetPosition, return the result to the OnPathComplete function
		seeker.StartPath(transform.position, targetPosition, OnPathComplete);
	}
	
	public void OnPathComplete(Path p){
		//Debug.Log(p.error);	
		if (!p.error){
			path = p;
			// Reset the waypoint counter.
			currentWaypoint = 0;
		}
	}
	
	public void endPath(){
		currentWaypoint = path.vectorPath.Length;	
	}
	
	public int getCurrentWaypoint(){
		return currentWaypoint;	
	}
	
	public int getFinalWaypoint(){
		return path.vectorPath.Length;
	}
	
	public void makeMove(Vector3 destination){
		//print (destination.ToString());
		//print (transform.position.ToString());
		seeker.StartPath(transform.position, destination, OnPathComplete);
		
	}
	
	public void FixedUpdate(){
		if (path == null)	{
			return;
		}
		
		if (currentWaypoint >= path.vectorPath.Length){
			return;
		}
		
		// Direction to next waypoint
		Vector3 dir = (path.vectorPath[currentWaypoint]-transform.position).normalized;
		dir *= speed * Time.fixedDeltaTime;
		controller.SimpleMove(dir);
		
		if (Vector3.Distance(transform.position,path.vectorPath[currentWaypoint]) < nextWaypointDistance){
			currentWaypoint++;
			return;
		}
	}
	
	// Returns the next position so that the model can be rotated to face
	// the direction in which they are moving
	// May return NULL, so guard against this once it is working
	public Vector3 GetNextPosition(){
		if (currentWaypoint+1 >= path.vectorPath.Length-1){
			return new Vector3(0,0,0);	
		}
		return path.vectorPath[currentWaypoint+1];
	}
}
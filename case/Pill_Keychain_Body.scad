use <Thread_Library.scad>
//use </Users/james/Documents/Projects/Thingiverse-Projects/Threaded Library/Thread_Library.scad>

translate([20,0,0]) {
  trapezoidNut(
	length=10, 				// axial length of the threaded rod 
	radius=7, 				// outer radius of the nut	
	pitch=1.8, 				// axial distance from crest to crest
	pitchRadius=5, 			// radial distance from center to mid-profile
	threadHeightToPitch=0.5,	// ratio between the height of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	profileRatio=0.5, 			// ratio between the lengths of the raised part of the profile and the pitch
						// std value for Acme or metric lead screw is 0.5
	threadAngle=35, 			// angle between the two faces of the thread 
						// std value for Acme is 29 or for metric lead screw is 30
	RH=true, 				// true/false the thread winds clockwise looking along shaft, i.e.follows the Right Hand Rule
	countersunk=0.5, 		// depth of 45 degree chamfered entries, normalized to pitch
	clearance=0.1, 			// radial clearance, normalized to thread height
	backlash=0.1, 			// axial clearance, normalized to pitch
	stepsPerTurn=24 			// number of slices to create per turn
	);

difference(){
  translate([0,0,0])
    cylinder([0,0,0], r=7.6, h=24, $fn=60);
  translate([0,0,0])
    cylinder([0,0,0], r=6.1, h=22, $fn=60);
}

}




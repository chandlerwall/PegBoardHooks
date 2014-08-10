use <peg.scad>
include <config.scad>

module tool_loop()
{
	difference(){
		union(){
			difference(){
				minkowski(){
					cube([20, 20, 5-pad], center = true);
					translate([0, 0, 0])cylinder(r=2, h=pad, center = true);
				}
				cylinder(r=9, h=5+pad, center = true);
			}
			translate([0, 20/2 + 6/2 + 0.25, 0])
				peg();
		}
		#translate([0, 15, 0])
			cube([1.25, 15, 5 + pad], center = true);
	}
}
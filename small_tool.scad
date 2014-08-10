use <peg.scad>
include <config.scad>

module small_tool()
{
	difference(){
		union(){
			minkowski(){
				cube([15, 15, 5-pad], center = true);
				translate([0, 0, 0])cylinder(r=2, h=pad, center = true);
			}
			translate([0, 15/2 + 6/2 + 0.25, 0])
				peg();
		}
		#translate([0, 10, 0])
			cube([1.5, 20, 5 + pad], center = true);
		cylinder(r1=3.25, r2=4.5, h=5+pad, center = true);
	}
}
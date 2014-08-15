use <peg.scad>
include <config.scad>

module tool_loop(r1=9, r2=10, w=20, h=5) {
	difference(){
		union(){
			minkowski(){
				cube([w, w, h-pad], center = true);
				translate([0, 0, 0])cylinder(r=2, h=pad, center = true);
			}
			translate([0, w/2 + peg_length/2 + 0.25, 0])
				peg(peg_length);
		}
		cylinder(h=h+pad, r1=r1, r2=r2, center = true);
		translate([0, (w + peg_length)/2, 0])
			cube([peg_gap, w + peg_length, h+pad], center = true);
	}
}
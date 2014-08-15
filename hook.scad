use <peg.scad>
include <config.scad>

module hook(w=20, h=5)
{
	mink_r = 3;

	difference()
	{
		union(){
			translate([mink_r, mink_r, -h/2])
				linear_extrude(height=h)
					minkowski(){
						polygon(
								points=[[0,0],[30,-w],[50,0],[60,0],
										[60,w],[50,w],[30,0],[0,w]],
								paths=[[0,1,2,3,4,5,6,7]]);
						circle(r=mink_r);
					}

			translate([0, (h + mink_r)/2,0])
				rotate([0,0,90])
					peg(peg_length);
		}

		#rotate([0,0,90])
			translate([(h + mink_r)/2, w/2 + peg_length/2 + pad, 0])
				cube([peg_gap, w * 2.5 + peg_length, h+pad], center = true);
	}
}
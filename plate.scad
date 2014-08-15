use <tool_loop.scad>
use <hook.scad>

// small_tool
translate([0, 0 ,0]) tool_loop(r1=7, r2=7.5, w=15);

// tiny_tool
translate([-25, 0 ,0]) tool_loop(r1=4.5, r2=4.5, w=15);

// large_tool
translate([30, 0, 0]) tool_loop(r1=12.5, r2=12.5, w=30);

// hook
translate([-50,0,0]) rotate([0,0,-90]) hook(w=3, h=5);
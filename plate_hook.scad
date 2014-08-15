use <tool_loop.scad>
use <hook.scad>

// hook
for(x=[0:1],y=[0:1])
translate([-15*x,80*y,0]) rotate([0,0,-90]) hook(w=2, h=5);
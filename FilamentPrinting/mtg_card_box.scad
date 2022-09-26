/*
Width: 67mm
Height: 92
*/

thickness = 3;

width = 67;
height = 92;


module bottom(){
difference(){
    cube([width + thickness, width + thickness, height * 2 / 3], center= true);
    translate([0, 0, thickness]){
    cube([width, width, height * 2 / 3], center= true);
    }
}
translate([0, 0, -((height * 2 / 3) / 2) - thickness / 3]){
cube([width + thickness * 2, width + thickness * 2, thickness], center = true);
}
}

module top(){
    translate([0, 0, height]){
    difference(){
            cube([width + thickness * 2, width + thickness * 2, height + thickness], center= true);
            translate([0,0,-thickness]){
            cube([width + thickness, width + thickness, height + thickness], center= true);
            }
    }
}
}

bottom();
top();
/*
Width: 67mm
Height: 92
*/

thickness = 3;

width = 67;
depth = 74;
height = 92;


module bottom(){
    union(){
difference(){
    cube([width + thickness, depth + thickness, height * 2 / 3], center= true);
    translate([0, 0, thickness]){
    cube([width, depth, height * 2 / 3], center= true);
    }
}
translate([0, 0, -((height * 2 / 3) / 2) - thickness / 4]){
cube([width + thickness * 2, depth + thickness * 2, thickness], center = true);
}
}
}

module top(){
    translate([0, 0, height]){
    difference(){
            cube([width + thickness * 2, depth + thickness * 2, height + thickness * 4], center= true);
            translate([0,0,-thickness * 1.6]){
            cube([width + thickness, depth + thickness, height + thickness], center= true);
            }
    }
}
}

bottom();
top();
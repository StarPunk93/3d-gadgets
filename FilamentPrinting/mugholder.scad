/*
 Tasse
 8cm Durchmesser
 5cm Höhe
 1.8cm Henkel

 Tisch
 4cm Tischplatte
*/

thickness = 7;

cupdia = 80;
cupheight = 50;
cupholder = 18;

table = 40;
$fn = 100;

// Cupholder

module cupholder(){
difference(){
cylinder(h = cupheight + thickness, center = true, d = cupdia + thickness);
translate([0,0,(thickness + 1)/ 2]){
cylinder(h = cupheight, center = true, d = cupdia);
}
translate([0, cupdia / 2 , cupheight / 5]){
cube([cupholder, cupdia, (cupheight / 10) * 8], center = true);
}
}
}

// Tableholder

module tableholder () {
cube([table + 10, cupdia / 2, thickness], center = true);
}

module snap () {
    translate([cupdia/5 * 3, 0 ,cupheight / 2 - thickness]) rotate([0, 75, 0]) cube([thickness, cupdia, thickness], center = true);
}

union(){
rotate([0, 0, 135])cupholder();
difference(){
    translate([(cupdia / 2) + ((table + 10) / 2) - thickness, 0, table / 2 + thickness / 2])tableholder();
    translate([0,0,(thickness + 1)/ 2]) cylinder(h = cupheight, center = true, d = cupdia);
    snap();
    translate([thickness, 0 , 0]) snap();
    translate([thickness * 2, 0 , 0]) snap();
    translate([thickness * 3, 0 , 0]) snap();
    
}
difference(){
    translate([(cupdia / 2) + ((table + 10) / 2) - thickness, 0, -(table / 2 + thickness / 3 * 2)]) tableholder();
    translate([0,0,(thickness + 1)/ 2]) cylinder(h = cupheight, center = true, d = cupdia);
}
}


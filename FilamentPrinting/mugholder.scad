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
union(){
rotate([0, 0, 45])cupholder();
difference(){
    translate([(cupdia / 2) + ((table + 10) / 2) - thickness, 0, table / 2 + thickness / 2])tableholder();
    translate([0,0,(thickness + 1)/ 2]) cylinder(h = cupheight, center = true, d = cupdia);
}
difference(){
    translate([(cupdia / 2) + ((table + 10) / 2) - thickness, 0, -(table / 2 + thickness / 2)]) tableholder();
    translate([0,0,(thickness + 1)/ 2]) cylinder(h = cupheight, center = true, d = cupdia);
}
}
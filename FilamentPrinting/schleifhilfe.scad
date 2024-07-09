width = 180;
height = 50;
length = 200;
winkela = 18.199;
winkelb = 13.975;
material = 5;


lochd = 9.8;
locht = 2.5;


// 20° Seite
difference(){
    translate([0, width / 2, 0]){
        rotate([90, 0, 0]){
            linear_extrude(height = width){
                polygon(points=[
                [0, height], [winkela, height], [0, 0]
                ]);
            }
        }
    }
translate([winkela / 3.841, 1 * width / 8, height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}
translate([winkela / 3.841, 1 * -width / 8, height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}

translate([winkela / 3.841, 3 * width / 8, height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}
translate([winkela / 3.841, 3 * -width / 8, height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}


translate([2 * winkela / 3.3691, -width / 4, 2 * height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}

translate([2 * winkela / 3.3691, width / 4, 2 * height / 3]){
rotate([0, -70, 0]){
cylinder(h=locht, r=lochd/2, center=true);
}}

}




 // Block
 translate([-length / 2,0, height / 2])
 cube([length,width, height], center = true);



// 15° Seite

 translate([-length, 0, height]){ 
 rotate([180, 0, 180]){
     difference(){
     translate([0, width / 2, 0]){
        rotate([90, 0, 0]){
            linear_extrude(height = width){
                polygon(points=[
                [0, height], [winkelb, height], [0, 0]
                ]);
            }
        }
    }
    translate([2 * winkelb / 3.46, width / 8, 2 * height / 3]){
        rotate([0, -75, 0]){
            cylinder(h=locht, r=lochd/2, center=true);
}}
    translate([2 * winkelb / 3.46, -width / 8, 2 * height / 3]){
        rotate([0, -75, 0]){
            cylinder(h=locht, r=lochd/2, center=true);
}}
    translate([2 * winkelb / 3.46, 3 * width / 8, 2 * height / 3]){
        rotate([0, -75, 0]){
            cylinder(h=locht, r=lochd/2, center=true);
}}
    translate([2 * winkelb / 3.46, 3 * -width / 8, 2 * height / 3]){
        rotate([0, -75, 0]){
            cylinder(h=locht, r=lochd/2, center=true);
}}

 }
 
 
 }}
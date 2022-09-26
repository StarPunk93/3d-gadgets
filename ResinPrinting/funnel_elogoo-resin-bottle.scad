bottle=32;
cylinder_hole_r=bottle/2;
thickness=2;
height=50;
support=10;
support_width=7;
support_len=10;
top_hole=32;

// Funnel
difference() {
    cylinder(h=height,r1=cylinder_hole_r,r2=top_hole, center=true, $fa=5, $fs=0.01);
    cylinder(h=height, r1=cylinder_hole_r - thickness, r2=top_hole - thickness,center=true, $fs=0.01, $fa=5);
    cylinder(h=height*2, r=cylinder_hole_r-thickness, center=true, $fs=0.1);
    translate([0,0,height/2])
        cube([200,200,2],center=true);
}

// Filter ring

difference() {
    cylinder(h=height,r1=cylinder_hole_r - thickness * 1.5,r2=top_hole - thickness * 1.5, center=true, $fa=5, $fs=0.01);
    cylinder(h=height, r1=cylinder_hole_r - thickness * 3, r2=top_hole - thickness * 3,center=true, $fs=0.01, $fa=5);
    cylinder(h=height*2, r=cylinder_hole_r-thickness, center=true, $fs=0.1);
    translate([0,0,height/2])
    cube([200,200,2],center=true);
    translate([0,0, -height/6])
    cube([200,200,height],center=true);
}
// Foots

difference() {
translate([0,cylinder_hole_r,-height/2-support/2+thickness])
    cylinder(r=thickness, h=support+thickness*3, center=true, $fa=5, $fs=0.01);
    cylinder(h=height,r1=cylinder_hole_r,r2=top_hole, center=true, $fa=5, $fs=0.01);    
}

difference(){
translate([0,-cylinder_hole_r,-height/2-support/2+thickness])
    cylinder(r=thickness, h=support+thickness*3, center=true, $fa=5, $fs=0.01);
    cylinder(h=height,r1=cylinder_hole_r,r2=top_hole, center=true, $fa=5, $fs=0.01);    
}

difference(){
translate([cylinder_hole_r,0,-height/2-support/2+thickness])
    cylinder(r=thickness, h=support+thickness*3, center=true, $fa=5, $fs=0.01);
        cylinder(h=height,r1=cylinder_hole_r,r2=top_hole, center=true, $fa=5, $fs=0.01);    
}

difference(){
translate([-cylinder_hole_r,0,-height/2-support/2+thickness])
    cylinder(r=thickness, h=support+thickness*3, center=true, $fa=5, $fs=0.01);
        cylinder(h=height,r1=cylinder_hole_r,r2=top_hole, center=true, $fa=5, $fs=0.01);    
}
// Horizontal supports
translate([cylinder_hole_r,0,-height/2-support])
    cube([support_width, thickness*2, thickness*2], center=true);

translate([0,cylinder_hole_r,-height/2-support])
    cube([thickness*2, support_width, thickness*2], center=true);

translate([-cylinder_hole_r,0,-height/2-support])
    cube([support_width, thickness*2, thickness*2], center=true);

translate([0,-cylinder_hole_r,-height/2-support])
    cube([thickness*2, support_width, thickness*2], center=true);

// Vertical Supports

// translate([cylinder_hole_r + support_width / 2,0, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);

translate([-cylinder_hole_r + support_width / 2,0, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);
    

// translate([-cylinder_hole_r - support_width / 2,0, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);

translate([cylinder_hole_r - support_width / 2,0, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);
    
    
// translate([0, cylinder_hole_r + support_width / 2, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);

translate([0, -cylinder_hole_r + support_width / 2, -height/2-support - support_len/2]) cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);
    

//translate([0, -cylinder_hole_r - support_width / 2, -height/2-support - support_len/2])    cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);

translate([0, cylinder_hole_r - support_width / 2, -height/2-support - support_len/2])    cylinder(r=thickness, h=support_len + thickness* 2, center=true, $fa=5, $fs=0.01);   
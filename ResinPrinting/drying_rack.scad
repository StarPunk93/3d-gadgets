
foot=20;
window_num = 5; // number of windows
window_size = 10; // size of individual windows
strut_size = 1; // size of the struts
thickness=strut_size*0.75;
    for (i = [-window_num/2:window_num/2]) {
       rotate([0, 0,-90])
    translate ([0 , (window_size + strut_size) * i, 0 ])
    cube (size=[window_num * (window_size + strut_size) + strut_size, strut_size, strut_size], center=true);
    }

    for (i = [-window_num/2:window_num/2]) {
    translate ([0, (window_size + strut_size) * i, 0])
    cube (size=[window_num * (window_size + strut_size) + strut_size, strut_size, strut_size], center=true);
    }
// Foots
translate([-window_size*1.5-strut_size*2,-window_size*1.5-strut_size*1.5,-foot/2])
    cylinder(r=thickness, h=foot, center=true, $fa=5, $fs=0.01);
    
translate([+window_size*1.5+strut_size*2,+window_size*1.5+strut_size*1.5,-foot/2])
    cylinder(r=thickness, h=foot, center=true, $fa=5, $fs=0.01); 
translate([-window_size*1.5-strut_size*2,+window_size*1.5+strut_size*1.5,-foot/2])
    cylinder(r=thickness, h=foot, center=true, $fa=5, $fs=0.01); 
translate([+window_size*1.5+strut_size*2,-window_size*1.5-strut_size*1.5,-foot/2])
    cylinder(r=thickness, h=foot, center=true, $fa=5, $fs=0.01); 

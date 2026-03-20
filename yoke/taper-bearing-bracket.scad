$fn = 50;

bearing_od = 47;
bearing_length = 15;

width = bearing_od + (2*25);
height = bearing_od + (2*25);
depth = 80;
// TODO ensure there is enough space for screw head
mounting_hole_spacing = 12;
mounting_hole_id = 5.25;
mounting_hole_depth = 5;
mounting_hole_qty = 7;

module mounting_holes() {
    for (i = [0 : mounting_hole_qty - 1])
        translate([i*mounting_hole_spacing,5])
            cylinder(h=mounting_hole_depth + 0.1, d=mounting_hole_id);
}

module bearing_holder() {
   difference() {
       cube([width,height,depth], center=true);
       cylinder(h=height+2, d=bearing_od, center=true);
       translate([-1*((mounting_hole_qty-1)*mounting_hole_spacing)/2, -1*height/2, depth/2 - mounting_hole_depth + 0.1])
           mounting_holes();
       mirror([0,0,1])
           translate([-1*((mounting_hole_qty-1)*mounting_hole_spacing)/2, -1*height/2, depth/2 - mounting_hole_depth + 0.1])
               mounting_holes();
   }
}

bearing_holder();
//mounting_holes();

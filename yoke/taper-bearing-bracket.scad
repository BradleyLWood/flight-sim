bearing_od = 47;
bearing_length = 15;

width = bearing_od + (2*25);
height = bearing_od + (2*25);
depth = 80;
mounting_hole_spacing_y = 20;
// TODO ensure there is enough space for screw head
mounting_hole_spacing_x = width + (2*10);
mounting_hole_tab_width = width + (2*20);
mounting_hole_tab_height = height/2;
mounting_hole_qty_y = 4;


module mounting_hole() {

}

module bearing_holder() {
   difference() {
       cube([width,height,depth], center=true);
       cylinder(h=height, d=bearing_od, center=true);
   }
}


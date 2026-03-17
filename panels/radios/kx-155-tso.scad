w = 158.75;
h = 50;

difference() {
    cube([w,h,2]);
    translate([(w-120)/2,(h-25)/2,-2])
        cube([120,25,5]);
}

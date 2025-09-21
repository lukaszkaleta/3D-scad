area_x = 5000;
area_y = 7000;
height = 2000;
brick_ = 225;


// Base
cube([area_x, area_y, 2],0);

// Main brick postures
cube([brick_,brick_,height], 0);

translate([0,area_y-brick_,0])
cube([brick_,brick_,height], 0);

translate([area_x-brick_,area_y-brick_,0])
cube([brick_,brick_,height], 0);

translate([area_x-brick_,0,0])
cube([brick_,brick_,height], 0);

// 
translate([0,0,height])
cube([brick_,area_y+1000,brick_], 0);

translate([area_x-brick_,0,height])
cube([brick_,area_y,brick_], 0);

translate([-1000, 0, height-500]) {
    rotate(a = -35, v = [0, 1, 0]) {
        for (a =[0:900:area_y]) {
            translate([0, a, 0])
            cube([4500, 90, 180], 0);    
        }
    }
}

translate([area_x+1000, 0, height-500]) {
    rotate(a = 180+35, v = [0, 1, 0]) {
        for (a =[0:900:area_y]) {
            translate([0, a, -180])
            cube([4500, 90, 180], 0);    
        }
    }
}

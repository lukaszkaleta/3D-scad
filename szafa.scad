
lacznik_d = 400;
lacznik_w = 70;
y = 20;
box = 585 - 20;


module wall(height, joints) {
    color("white") {
                                        cube([90,y,height]);
        translate([90+lacznik_d, 0, 0]) cube([90,y,height]);
        
        for (a = joints) {
            translate([90, 0, a]) cube([lacznik_d,y,lacznik_w]);
        }
        
    }
}

module drawerBox(width = box) {
    height = 440;
                             wall(height, [100, 250]);
    translate([0, width, 0]) wall(height, [100, 250]);
    
    translate([0, y, 250])
    cube([90, box-20, y]);
    
    translate([0, y, height-y])
    cube([90, box-20, y]);
    
    translate([lacznik_d+90, y, 250])
    cube([90, box-20, y]);
    
    translate([lacznik_d+90, y, height-y])
    cube([90, box-20, y]);
}

module hangBox(height, width = box) {
                                wall(height, [100, height-300, height-200]);
    translate ([0, width, 0])   wall(height, [100, height-300, height-200]);
    
    color("white")
    translate([0, y, 0])                    cube([400+90+90, box-20, y]);
    translate([0, y, height-y])             cube([90, box-20, y]);
    translate([lacznik_d+90, y, height-y])  cube([90, box-20, y]);
}

                                drawerBox();
translate ([0, (box+y), 0])     drawerBox();
translate ([0, (box+y)*2, 0])   drawerBox();
translate ([0, (box+y)*3, 0])   drawerBox();
translate ([0, (box+y)*4, 0])   drawerBox();
translate ([0, (box+y)*5, 0])   drawerBox();

translate ([0, 0, 440])         hangBox(1054, box);
translate ([0, 0, 440+1054])    hangBox(1054, box);

translate ([0, (box+y), 440])   hangBox(1054, box);
translate ([0, (box+y), 440+1054])   hangBox(1054-406, box);

translate ([0, (box+y)*2, 440])   hangBox(1054*2-406*2, box);

translate ([0, (box+y)*3, 440])   hangBox(1054*2-406*3, box);

translate ([0, (box+y)*4, 440])   hangBox(1054*2-406*4, box);


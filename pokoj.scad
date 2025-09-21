
wciecie_na_szafe=400;
komin_x=1524;

polygon(points=[
    [0,0],
    [komin_x, 0],
    [komin_x, 729],
    [2254, 729],
    [2254, 729-wciecie_na_szafe],
    [5940, 729-wciecie_na_szafe],
    [5940, 729],
    [5940, 729],
    [6162, 729],
    [6162,6334],
    [1104,6334],
    [1104,4163],
    [0,4163],
    [0,6334]
]);


color("red")
polygon(points=[
    [0,0],
    [komin_x, 0],
    [komin_x, 400],
    [0, 400]
]);


translate([0, 729+500, 0]) {
    color("red")
    polygon(points=[
    [0,0],
    [komin_x, 0],
    [komin_x, 20],
    [0, 20]
]);

}


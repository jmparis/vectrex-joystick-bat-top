// Finesse pour l'impression
$fn = 100;

dimension = 20;

difference() {
    sphere( dimension );
    sphere( dimension - 2 );
    translate( [0, 0, -dimension] )
        cube(dimension * 2, center = true);
}

cylinder(
    dimension * 3,
    dimension / 5,
    dimension / 5 * 2
);
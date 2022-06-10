// Finesse pour l'impression
$fn = 100;

dimension = 100;

difference() {
    sphere( dimension );
    sphere( dimension - 2 );
    translate( [0, 0, -dimension] )
        cube(dimension * 2, center = true);
}

cylinder( 300, 20, 40 );
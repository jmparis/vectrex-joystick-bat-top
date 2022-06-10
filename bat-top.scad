// Nombre de fragments
// Finesse pour l'impression
$fn = 64;

dimension = 20;

difference() {
    sphere( dimension );
    sphere( dimension - 2 );
    translate( [0, 0, -dimension] )
        cube(
            dimension * 2   ,
            center = true
        );
}

difference() {
    cylinder(
        dimension * 3,
        dimension / 5,
        dimension / 5 * 2
    );

    cube(
        [
          dimension / 8,
          dimension / 8,
          dimension
        ] ,
        center = true
    );      

translate( [0.66, 0, 0] )
        cylinder(
            dimension       ,
            dimension / 13   ,
            center = true
        );

translate( [-0.66, 0, 0] )
        cylinder(
            dimension       ,
            dimension / 13   ,
            center = true
        );

}
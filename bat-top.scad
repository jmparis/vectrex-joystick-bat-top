// Nombre de fragments
// Finesse pour l'impression
$fn = 64;

dimension = 20;

module coupole( diametre_ext, epaisseur ) {

    difference() {
        sphere( diametre_ext );
        sphere( diametre_ext - 2 );
        translate( [0, 0, -diametre_ext] )
            cube(
                diametre_ext * 2   ,
                center = true
            );
    }
}

module bat ( dia_inf, dia_sup ) {

    difference() {
        cylinder(
            dimension * 3   ,
            dia_inf         ,
            dia_sup
        );

        cube(
            [
            dimension / 8   ,
            dimension / 8   ,
            dimension
            ] ,
            center = true
        );

        translate( [0.66, 0, 0] )
                cylinder(
                    dimension       ,
                    dimension / 13  ,
                    center = true
                );

        translate( [-0.66, 0, 0] )
            cylinder(
                dimension       ,
                dimension / 13   ,
                center = true
            );
    }
}

coupole( dimension, 2 );
bat( dimension / 5, dimension / 5 * 2 );

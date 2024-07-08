#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import copysign

fn main():
    # Numbers
    var number_x = 9.0
    var number_y = -11.0

    # Copysign
    var a = copysign(number_x, number_y)
    print(a)

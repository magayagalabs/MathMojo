#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import trunc

fn main():
    # Numbers
    var number_1 = 2.77
    var number_2 = 9.33
    var number_3 = -90.99

    # Truncables
    var a = trunc(number_1)
    var b = trunc(number_2)
    var c = trunc(number_3)
    
    print(a, b, c)

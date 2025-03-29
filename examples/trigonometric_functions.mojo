#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from mathmojo import sin, cos, tan, radians

fn main():
    # Number
    var number = 45

    # Trigonometry functions
    var a = sin(radians(number))
    var b = cos(radians(number))
    var c = tan(radians(number))
    
    print("sin of 45 degrees:", a)
    print("cos of 45 degrees:", b)
    print("tan of 45 degrees:", c)

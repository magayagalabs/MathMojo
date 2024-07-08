#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import arcsin, arccos, arctan

fn main():
    # Number
    var number = 1.0

    # Inverse trigonometric functions
    var a = arcsin(number)
    var b = arccos(number)
    var c = arctan(number)

    print("arcsin of 10 degrees:", a)
    print("arccos of 10 degrees:", b)
    print("arctan of 10 degrees:", c)

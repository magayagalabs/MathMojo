#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import sinh, cosh, tanh

fn main():
    # Number
    var number = 2.5

    # Hyperbolic functions
    var a = sinh(number)
    var b = cosh(number)
    var c = tanh(number)

    print("sinh of 2.5 degrees:", a)
    print("cosh of 2.5 degrees:", b)
    print("tanh of 2.5 degrees:", c)

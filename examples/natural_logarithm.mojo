#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import ln, multiply

fn main():
    # Number
    var number = 2

    # Multiplying numbers
    var multiply = multiply(number, number)

    # Natural logarithm
    var a = ln(number)
    var b = ln(multiply)
    print(a, b)

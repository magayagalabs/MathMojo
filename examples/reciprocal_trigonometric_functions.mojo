#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import csc, sec, cot, radians

fn main():
    # Number
    var number = 45

    # Trigonometry functions
    var a = csc(radians(number))
    var b = sec(radians(number))
    var c = cot(radians(number))

    print("csc of 45 degrees:", a)
    print("sec of 45 degrees:", b)
    print("cot of 45 degrees:", c)

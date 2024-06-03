#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
import random

struct constants:
    # Mathematical constants
    var PI: Float64
    var E: Float64
    var goldenRatio: Float64
    var silverRatio: Float64

    # Physical constants
    var speedOfLight: Int
    var C: Int

    fn __init__(inout self):
        self.PI = 3.141592653589793
        self.E = 2.718281828459045
        self.goldenRatio = 1.618033988749894
        self.silverRatio = 2.414213562373095
        self.speedOfLight = 299_792_458
        self.C = 299_792_458

    fn __del__(owned self):
        pass

fn M3L():

    # Positive number
    fn positive(x: Float64) -> Float64:
        return x

    # Negative number
    fn negative(x: Float64) -> Float64:
        return -x

    # Square root
    fn sqrt(x: Float64) -> Float64:
        return x ** 1/2

    # Cube root
    fn cbrt(x: Float64) -> Float64:
        return x ** 1/3

#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
import random

# Mathematical constants
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
        # pi
        self.PI = 3.141592653589793

        # euler's number
        self.E = 2.718281828459045

        # golden ratio or phi
        self.goldenRatio = 1.618033988749894
        self.phi = 1.618033988749894

        # silver ratio
        self.silverRatio = 2.414213562373095

        # speed of light or C
        self.speedOfLight = 299_792_458
        self.C = 299_792_458

    fn __del__(owned self):
        pass

# Positive number
fn positive(x: Float64) -> Float64:
    return x

# Negative number
fn negative(x: Float64) -> Float64:
    return -x

# Square
fn sq(x: Float64) -> Float64:
    return x * x

# Cube
fn cb(x: Float64) -> Float64:
    return x * x * x

# Quinque
fn qn(x: Float64) -> Float64:
    return x * x * x * x * x

# Square root
fn sqrt(x: Float64) -> Float64:
    return x ** (1/2)

# Cube root
fn cbrt(x: Float64) -> Float64:
    return x ** (1/3)

# Quinque root (also known as Fifth root)
fn qnrt(x: Float64) -> Float64:
    return x ** (1/5)

# Power
fn pow(a: Float64, b: Int32) -> Float64:
    # Declare mutable variables
    var base = a
    var exponent = b
    var result: Float64 = 1.0

    if exponent == 0:
        return 1.0
    elif exponent < 0:
        base = 1.0 / base
        exponent = -exponent

    while exponent > 0:
        if exponent % 2 == 1:
            result *= base
        base *= base
        exponent //= 2

    return result

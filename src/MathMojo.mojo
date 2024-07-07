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

# Addition
fn add(*values: Float64) -> Float64:
  var add: Float64 = 0
  for value in values:
    add = add+value
  return add

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


# Exponent
fn exp(x: Float64) -> Float64:
    var sum: Float64 = 1.0
    var term: Float64 = 1.0
    var n: Int32 = 1
    while term > 1e-10:  # Stop when term is very small
        term *= x / Float64(n)
        sum += term
        n += 1
    return sum

# Factorial
fn factorial(n: Int32) -> Int32:
    if n < 0:
        return -1  # Factorial is not defined for negative numbers
    var result: Int32 = 1
    var i: Int32 = 1
    while i <= n:
        result *= i
        i += 1
    return result

# Absolute value (Float64)
fn fabs(x: Float64) -> Float64:
    if x < 0.0:
        return -x
    else:
        return x

# Absolute value (Int32)
fn iabs(x: Int32) -> Int32:
    if x < 0.0:
        return -x
    else:
        return x

# Ceil
fn ceil(x: Float64) -> Float64:
    var int_part: Int64 = Int64(x)
    if x > 0.0 and Float64(int_part) != x:
        int_part += 1
    return Float64(int_part)

# Floor
fn floor(x: Float64) -> Float64:
    var int_part: Int64 = Int64(x)
    if x < 0.0 and Float64(int_part) != x:
        int_part -= 1
    return Float64(int_part)

# Minimum
fn min(*args: Float64) -> Float64:
    var min_value = args[0]
    for arg in args:
        if arg < min_value:
            min_value = arg
    return min_value

# Maximum
fn max(*args: Float64) -> Float64:
    var max_value = args[0]
    for arg in args:
        if arg > max_value:
            max_value = arg
    return max_value

# Greatest common divisor (GCD)
fn gcd(a: Int32, b: Int32) -> Int32:
    var x: Int32 = iabs(a)
    var y: Int32 = iabs(b)
    while y != 0:
        var temp = y
        y = x % y
        x = temp
    return x

# Degrees
# Converting radians into the degrees
fn degrees(radians: Float64) -> Float64:
    return radians * (180.0 / constants().PI)

# Radians
# Converting degrees into the radians
fn radians(degrees: Float64) -> Float64:
    return degrees * (constants().PI / 180.0)

# Sine
fn sin(x: Float64) -> Float64:
    var normalized_x = x % (2 * constants().PI)  # Normalize x to range [0, 2π]
    if normalized_x < -constants().PI:
        normalized_x += 2 * constants().PI
    elif normalized_x > constants().PI:
        normalized_x -= 2 * constants().PI

    var term = x
    var sum = x
    var x_squared = x * x
    var sign = -1
    var i = 1

    while fabs(term) > 1e-10:
        term *= x_squared / ((2 * i) * (2 * i + 1))
        sum += sign * term
        sign *= -1
        i += 1

    return sum

# Cosine
fn cos(x: Float64) -> Float64:
    var normalized_x = x % (2 * constants().PI)  # Normalize x to range [0, 2π]
    if normalized_x < -constants().PI:
        normalized_x += 2 * constants().PI
    elif normalized_x > constants().PI:
        normalized_x -= 2 * constants().PI

    var term = 1.0
    var sum = 1.0
    var x_squared = x * x
    var sign = -1
    var i = 1

    while fabs(term) > 1e-10:
        term *= x_squared / ((2 * i - 1) * (2 * i))
        sum += sign * term
        sign *= -1
        i += 1

    return sum

# Tangent
fn tan(x: Float64) -> Float64:
    return sin(x) / cos(x)

# Cosecant
fn csc(x: Float64) -> Float64:
    return 1 / sin(x)

# Secant
fn sec(x: Float64) -> Float64:
    return 1 / cos(x)

# Cotangent
fn cot(x: Float64) -> Float64:
    return 1 / tan(x)

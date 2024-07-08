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
fn add(*numbers: Float64) -> Float64:
    var sum: Float64 = 0
    for num in numbers:
        sum += num
    return sum

# Subtraction
fn subtract(*numbers: Float64) -> Float64:
    if len(numbers) == 0:
        return 0
    var result: Float64 = numbers[0]
    for i in range(1, len(numbers)):
        result -= numbers[i]
    return result

# Multiplication
fn multiply(*numbers: Float64) -> Float64:
    if len(numbers) == 0:
        return 1
    var result: Float64 = 1
    for num in numbers:
        result *= num
    return result

# Division
fn divide(*numbers: Float64) -> Float64:
    if len(numbers) == 0:
        return 1
    var result: Float64 = numbers[0]
    for i in range(1, len(numbers)):
        if numbers[i] == 0:
            print("Error: Division by zero")
            return 0  # or another sentinel value
        result /= numbers[i]
    return result

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
fn ceil(x: Float64) -> Int:
    var integer_part = int(x)
    if x > 0 and x > integer_part:
        return integer_part + 1
    else:
        return integer_part

# Floor
fn floor(x: Float64) -> Int:
    var integer_part = int(x)
    if x < 0 and x < integer_part:
        return integer_part - 1
    else:
        return integer_part

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

# Inverse sine
fn arcsin(x: Float64) -> Float64:
    if x < -1.0 or x > 1.0:
        return Float64('nan')  # Domain error
    
    var guess = x
    var epsilon = 1e-10
    var max_iterations = 100
    var i = 0

    while i < max_iterations:
        var next_guess = guess - (sin(guess) - x) / cos(guess)
        if fabs(next_guess - guess) < epsilon:
            return next_guess
        guess = next_guess
        i += 1

    return guess  # Return best guess if max iterations reached

# Inverse cosine
fn arccos(x: Float64) -> Float64:
    return constants().PI / 2 - arcsin(x)

# Inverse tangent
fn arctan(x: Float64) -> Float64:
    var guess = x / (1.0 + sqrt(1.0 + x * x))
    var epsilon = 1e-10
    var max_iterations = 100
    var i = 0

    while i < max_iterations:
        var next_guess = guess - (tan(guess) - x) / (1 + tan(guess) * tan(guess))
        if fabs(next_guess - guess) < epsilon:
            return next_guess
        guess = next_guess
        i += 1

    return guess  # Return best guess if max iterations reached

# Inverse tangent2
fn arctan2(y: Float64, x: Float64) -> Float64:
    if x > 0:
        return arctan(y / x)
    elif x < 0:
        if y >= 0:
            return arctan(y / x) + constants().PI
        else:
            return arctan(y / x) - constants().PI
    else:  # x == 0
        if y > 0:
            return constants().PI / 2
        elif y < 0:
            return -constants().PI / 2
        else:  # y == 0
            return Float64('nan')  # Undefined

# Hyperbolic Sine
fn sinh(x: Float64) -> Float64:
    return (exp(x) - exp(-x)) / 2

# Hyperbolic Cosine
fn cosh(x: Float64) -> Float64:
    return (exp(x) + exp(-x)) / 2

# Hyperbolic Tangent
fn tanh(x: Float64) -> Float64:
    if x > 19.1:
        return 1.0  # Approaches 1 for large positive x
    elif x < -19.1:
        return -1.0  # Approaches -1 for large negative x
    var e_x = exp(x)
    var e_neg_x = 1 / e_x  # More efficient than calculating exp(-x) separately
    return (e_x - e_neg_x) / (e_x + e_neg_x)

# Inverse Hyperbolic Sine
fn arcsinh(x: Float64) -> Float64:
    return ln(x + sqrt(x * x + 1))

# Inverse Hyperbolic Cosine
fn arccosh(x: Float64) -> Float64:
    if x < 1:
        return Float64('nan')  # Undefined for x < 1
    return ln(x + sqrt(x * x - 1))

# Inverse Hyperbolic Tangent
fn arctanh(x: Float64) -> Float64:
    if x <= -1 or x >= 1:
        return Float64('nan')  # Undefined for |x| >= 1
    return 0.5 * ln((1 + x) / (1 - x))

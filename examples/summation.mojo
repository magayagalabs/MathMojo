#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# Copyright (c) 2025 Cyril John Magayaga
#
from mathmojo import *

fn series_e(n: Float64) -> Float64:
    return 1.0 / Float64(factorial(Int32(n)))

fn main() raises -> None:
    var limit: Float64 = 33.0
    var result = sum(limit, series_e, index = 0.0)
    # Summation of E
    print("Summation result: ", result)
    # Constant of E
    print("Constant result:  ", constants().E)

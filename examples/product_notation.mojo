#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# Copyright (c) 2025-2026 Cyril John Magayaga
#
from mathmojo import *

fn products(n: Float64) -> Float64:
    return pow(n, 2.0)

fn main() raises -> None:
    var limit: Float64 = 6.0
    var result = prod(limit, products, index = 1.0)
    print("Product notation result: ", result)

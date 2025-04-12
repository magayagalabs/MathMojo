#
# MathMojo Probability - Probability Mathematicial Library for Mojo programming language 🔥
# Copyright (c) 2025 Cyril John Magayaga
#

from mathmojo import *

# Permutation
fn perm(n: Int32, r: Int32) -> Int32:
    if n < r:
        return 0
    else:
        return factorial(n) / (factorial(n - r))

# Combination
fn comb(n: Int32, r: Int32) -> Int32:
    if n < r:
        return 0
    else:
        return factorial(n) / (factorial(n - r) * factorial(r))

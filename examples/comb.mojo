#
# MathMojo - Mathematical Library for Mojo programming language 🔥
# is the similar to the M3L (Magayaga Mathematical Library)
# Copyright (c) 2024 Cyril John Magayaga
#
from MathMojo import comb, add

fn main():
    # Numbers
    var number_x = 7
    var number_y = 5

    # Combinations
    var a = comb(number_x, number_y)
    var b = comb(number_x + 20, number_y + 13)
    print(a, b)

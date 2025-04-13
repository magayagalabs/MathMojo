#
# MathMojo Calculus - Calculus Mathematicial Library for Mojo programming language 🔥
# Copyright (c) 2025 Cyril John Magayaga
#

from mathmojo import *

# Infinite value
# Define a helper function that checks whether a Float64 value is infinite.
fn isintfinite(x: Float64) raises -> Bool:
    var posInf = Float64("infinity")
    return x == posInf or x == -posInf

# Summation
# sum(upperLimit, term, index) can be 33.0 is max upper limit.
fn sum(upperLimit: Float64, term: fn(Float64) -> Float64, index: Float64 = 1.0) raises -> Float64:
    var total: Float64 = 0.0
    var i: Float64 = index

    if isintfinite(upperLimit):
        # If the upper limit is infinite, continue adding until the term is negligibly small.
        var current_term = term(i)
        while fabs(current_term) > 1e-10:
            total += current_term
            i += 1.0
            current_term = term(i)
    else:
        # Otherwise, perform a finite summation from i up to the upperLimit.
        while i <= upperLimit:
            total += term(i)
            i += 1.0
    return total

# Product notation
# product(upperLimit, term, index) with upper limit up to 33.0
fn prod(upperLimit: Float64, term: fn(Float64) -> Float64, index: Float64 = 1.0) raises -> Float64:
    var total: Float64 = 1.0
    var i: Float64 = index

    if isintfinite(upperLimit):
        # Infinite product until the term is close enough to 1
        var current_term = term(i)
        while fabs(current_term - 1.0) > 1e-10:
            total *= current_term
            i += 1.0  # Correct increment for product index
            current_term = term(i)
    else:
        # Finite product
        while i <= upperLimit:
            total *= term(i)
            i += 1.0  # Fix: increment instead of multiply by 1.0
    return total

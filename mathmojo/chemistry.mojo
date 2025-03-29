#
# MathMojo Chemistry - Chemistry Mathematicial Library for Mojo programming language 🔥
# Copyright (c) 2025 Cyril John Magayaga
#

# Celsius to Kelvin
fn CtK(celsius: Float64) -> Float64:
    return celsius + 273.15

# Kelvin to Celsius
fn KtC(kelvin: Float64) -> Float64:
    return kelvin - 273.15

# Fahrenheit to Kelvin
fn FtK(fahrenheit: Float64) -> Float64:
    return (fahrenheit - 32) * (5/9) + 273.15

# Kelvin to Fahrenheit
fn KtF(kelvin: Float64) -> Float64:
    return (kelvin - 273.15) * (9/5) + 32

# Celsius to Fahrenheit
fn CtF(celsius: Float64) -> Float64:
    return (celsius * 9/5) + 32

# Fahrenheit to Celsius
fn FtC(fahrenheit: Float64) -> Float64:
    return (fahrenheit - 32) * (5/9)

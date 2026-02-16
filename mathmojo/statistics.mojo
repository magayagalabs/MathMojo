#
# MathMojo Statistics - Statistics Mathematical Library for Mojo programming language 🔥
# Copyright (c) 2025-2026 Cyril John Magayaga
#

from mathmojo.sort import *
from mathmojo import *

# Mean
fn mean(*args: Float64) -> Float64:
    var total: Float64 = 0.0
    var count: Int = 0
    for value in args:
        total += value
        count += 1
    return total / count

# Median
fn median(*args: Float64) -> Float64:
    # Copy the variadic arguments into a mutable list
    var arr: List[Float64] = List[Float64]()
    for value in args:
        arr.append(value)
    # Sort the array using block sort
    block_sort(arr)
    var n = len(arr)
    if n % 2 == 1:
        # Odd number of elements: return the middle element
        return arr[n // 2]
    else:
        # Even number of elements: return the average of the two middle elements
        return (arr[(n // 2) - 1] + arr[n // 2]) / 2.0

# Median for list of numbers
fn lmedian(data: List[Int]) raises -> Float64:
    if len(data) == 0:
        raise Error("The data list is empty")
        
    # Convert integers to Float64 and create a new list
    var float_data = List[Float64]()
    for i in range(len(data)):
        float_data.append(Float64(data[i]))
    
    # Sort the data using block sort
    block_sort(float_data)
    
    var n = len(float_data)
    
    if n % 2 == 1:
        return float_data[n // 2]
    else:
        var mid1 = float_data[n // 2 - 1]
        var mid2 = float_data[n // 2]
        return (mid1 + mid2) / 2.0

# Mode
fn mode(*args: Float64) -> String:
    if len(args) == 0:
        return "0.0"
    
    # Create arrays to store unique values and their counts
    var values: List[Float64] = List[Float64]()
    var counts: List[Int] = List[Int]()
    
    # Count occurrences of each value
    for value in args:
        var found = False
        for i in range(len(values)):
            if values[i] == value:
                counts[i] += 1
                found = True
                break
        if not found:
            values.append(value)
            counts.append(1)
    
    # Find the maximum count
    var max_count = 0
    for i in range(len(counts)):
        if counts[i] > max_count:
            max_count = counts[i]
    
    # If max_count is 1, there is no mode
    if max_count == 1:
        return "0.0"
    
    # Create a list to store mode values
    var modes: List[Float64] = List[Float64]()
    
    # Collect all values that appear max_count times
    for i in range(len(counts)):
        if counts[i] == max_count:
            modes.append(values[i])
    
    # Convert result to string
    var result = String(modes[0])
    for i in range(1, len(modes)):
        result = result + " " + String(modes[i])
    
    return result

# Range
fn srange(*args: Float64) -> Float64:
    if len(args) == 0:
        return 0.0
    
    # Initialize max and min with the first value
    var max_value: Float64 = args[0]
    var min_value: Float64 = args[0]
    
    # Find maximum and minimum values
    for value in args:
        if value > max_value:
            max_value = value
        if value < min_value:
            min_value = value
    
    # Calculate the range (highest - lowest)
    return max_value - min_value

# Variance
fn variance(arr: DynamicVector[Float64], ddof: Int = 0) -> Float64:
    """
    Compute variance (population or sample)
    ddof = 0  → population variance (÷ n)
    ddof = 1  → sample variance     (÷ (n-1))
    """
    let n = arr.size
    if n <= ddof:
        return 0.0
    
    let mu = mean(arr)
    
    var sum_sq_diff: Float64 = 0.0
    for i in range(n):
        let diff = arr[i] - mu
        sum_sq_diff += diff * diff
    
    let divisor = Float64(n - ddof)
    return sum_sq_diff / divisor

# Standard Deviation
fn std(arr: DynamicVector[Float64], ddof: Int = 0) -> Float64:
    """
    Compute standard deviation using the same ddof convention as variance
    """
    return sqrt(variance(arr, ddof))

#
# MathMojo Sort - Sorting Algorithm Library for Mojo programming language 🔥
# Copyright (c) 2025 Cyril John Magayaga
#

# Bubble Sort
fn bubble_sort(mut arr: List[Float64]) -> None:
    var n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                # Swap elements
                var temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp

# Selection Sort
fn selection_sort(mut arr: List[Float64]) -> None:
    var n = len(arr)
    for i in range(n):
        # Find the minimum element in the unsorted portion
        var min_idx = i
        for j in range(i + 1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        
        # Swap the found minimum element with the first element
        if min_idx != i:
            var temp = arr[i]
            arr[i] = arr[min_idx]
            arr[min_idx] = temp

# Merge
fn merge(mut arr: List[Float64], left: Int, mid: Int, right: Int) -> None:
    var n1 = mid - left + 1
    var n2 = right - mid

    # Create temporary arrays
    var L = List[Float64]()
    var R = List[Float64]()

    # Copy data to temporary arrays
    for i in range(n1):
        L.append(arr[left + i])
    for j in range(n2):
        R.append(arr[mid + 1 + j])

    # Merge the temporary arrays back into arr[left..right]
    var i = 0  # Initial index of first subarray
    var j = 0  # Initial index of second subarray
    var k = left  # Initial index of merged subarray

    while i < n1 and j < n2:
        if L[i] <= R[j]:
            arr[k] = L[i]
            i += 1
        else:
            arr[k] = R[j]
            j += 1
        k += 1

    # Copy remaining elements of L[], if any
    while i < n1:
        arr[k] = L[i]
        i += 1
        k += 1

    # Copy remaining elements of R[], if any
    while j < n2:
        arr[k] = R[j]
        j += 1
        k += 1

# Merge Sort Helper
fn merge_sort_helper(mut arr: List[Float64], left: Int, right: Int) -> None:
    if left < right:
        var mid = left + (right - left) // 2
        
        # Sort first and second halves
        merge_sort_helper(arr, left, mid)
        merge_sort_helper(arr, mid + 1, right)
        
        # Merge the sorted halves
        merge(arr, left, mid, right)

# Merge Sort
fn merge_sort(mut arr: List[Float64]) -> None:
    merge_sort_helper(arr, 0, len(arr) - 1)

# Insertion Sort Range
fn insertion_sort_range(mut arr: List[Float64], left: Int, right: Int) -> None:
    for i in range(left + 1, right + 1):
        var key = arr[i]
        var j = i - 1
        while j >= left and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key

# Merge Blocks
fn merge_blocks(mut arr: List[Float64], mut temp: List[Float64], left: Int, mid: Int, right: Int) -> None:
    var i = left
    var j = mid
    var k = left

    while i < mid and j < right:
        if arr[i] <= arr[j]:
            temp[k] = arr[i]
            i += 1
        else:
            temp[k] = arr[j]
            j += 1
        k += 1

    while i < mid:
        temp[k] = arr[i]
        i += 1
        k += 1

    while j < right:
        temp[k] = arr[j]
        j += 1
        k += 1

    # Copy back to original array
    for i in range(left, right):
        arr[i] = temp[i]

# Block Sort
fn block_sort(mut arr: List[Float64]) -> None:
    var n = len(arr)
    if n < 2:
        return

    # Define block size (adjust this value based on input size)
    var block_size = 32  # Typical block size for good performance
    
    # Create temporary array for merging
    var temp = List[Float64]()
    for i in range(n):
        temp.append(0.0)

    # Sort individual blocks using insertion sort
    var i = 0
    while i < n:
        var right = min(i + block_size, n)
        insertion_sort_range(arr, i, right - 1)
        i += block_size

    # Merge sorted blocks
    var curr_size = block_size
    while curr_size < n:
        var left = 0
        while left < n:
            var mid = min(left + curr_size, n)
            var right = min(left + 2 * curr_size, n)
            if mid < right:
                merge_blocks(arr, temp, left, mid, right)
            left += 2 * curr_size
        curr_size *= 2

# Partition
fn partition(mut arr: List[Float64], low: Int, high: Int) -> Int:
    # Use median-of-three for pivot selection
    var mid = low + (high - low) // 2
    
    # Sort low, mid, high elements to get good pivot
    if arr[mid] < arr[low]:
        var temp = arr[low]
        arr[low] = arr[mid]
        arr[mid] = temp
    if arr[high] < arr[low]:
        var temp = arr[low]
        arr[low] = arr[high]
        arr[high] = temp
    if arr[mid] < arr[high]:
        var temp = arr[mid]
        arr[mid] = arr[high]
        arr[high] = temp
    
    # Place pivot at end
    var pivot = arr[high]
    var i = low - 1

    # Partition array
    for j in range(low, high):
        if arr[j] <= pivot:
            i += 1
            var temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp

    # Put pivot in its final place
    var temp = arr[i + 1]
    arr[i + 1] = arr[high]
    arr[high] = temp
    
    return i + 1

# Quick Sort Helper
fn quick_sort_helper(mut arr: List[Float64], low: Int, high: Int) -> None:
    # Use insertion sort for small subarrays (optimization)
    if high - low < 10:
        for i in range(low + 1, high + 1):
            var key = arr[i]
            var j = i - 1
            while j >= low and arr[j] > key:
                arr[j + 1] = arr[j]
                j -= 1
            arr[j + 1] = key
        return

    # Use quicksort for larger subarrays
    if low < high:
        var pi = partition(arr, low, high)
        
        # Sort elements before and after partition
        quick_sort_helper(arr, low, pi - 1)
        quick_sort_helper(arr, pi + 1, high)

# Quick Sort
fn quick_sort(mut arr: List[Float64]) -> None:
    quick_sort_helper(arr, 0, len(arr) - 1)

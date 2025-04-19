<p align="center">
   <a href="https://github.com/magayagalabs/MathMojo">
      <img src="https://github.com/magayagalabs/MathMojo/blob/main/assets/MathMojo-background.svg" alt="MathMojo logo" width="400" height="200">
   </a>
</p>

# MathMojo &middot; [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://github.com/magayagalabs/MathMojo/blob/main/LICENSE)

`MathMojo` is a library for [mojo](https://www.modular.com/max/mojo) programming language that mathematics like constants, operations, functions, expressions, and part of the science! It was available for **Linux** 🐧, **macOS** 🍎, and **Windows Subsystem for Linux** 🪟 operating systems!

## MathMojo's Features

**MathMojo** currently has the following features:
- [x] `mathmojo`
- [x] `mathmojo.calculus`
- [x] `mathmojo.chemistry`
- [ ] `mathmojo.metric_prefix` (Wait!)
- [x] `mathmojo.probability`
- [x] `mathmojo.sort`
- [x] `mathmojo.statistics`

## Examples

### Square roots

* `MathMojo` provides convenient mathematical functions for finding roots. For example:

   ```mojo
   from mathmojo import sqrt

   fn main():
       # Square roots
       print(sqrt(25))
       print(sqrt(196))
   ```
   
* `NumPy` provides convenient mathematical functions for finding roots like **Python modules**. For example:

   ```mojo
   from python import Python

   def main():
       Python.add_to_path("path/to/module")
       np = Python.import_module("numpy")
       # Square roots
       print(np.sqrt(25))
       print(np.sqrt(196))
   ```

## Getting Start

### Modular (v25 and above)
1. Downloading and Installing `magic` ([Modular Magic package manager and virtual environment manager](https://docs.modular.com/magic/)). Learn more please. 

2. Clone the code mathematical libraries and then directory:

   ```bash
   $ git clone https://github.com/magayagalabs/MathMojo.git
   $ cd MathMojo
   ```
   
### Modular (v24)
1. Downloading and Installing `modular` ([The Modular command line interface](https://docs.modular.com/cli/)). You can start in your terminal now. It was available for Linux, macOS, and WSL for Windows.
   
   ```bash
   # You can download the modular CLI
   $ curl -s https://get.modular.com | sh -
   ```
   
2. Installing `mojo`: You can read the [Get started with Max Engine](https://docs.modular.com/engine/get-started).
   
   ```bash
   $ modular install mojo
   $ mojo -v (v24.3.0 or above)
   ```

3. Clone the code mathematical libraries and then directory:

   ```bash
   $ git clone https://github.com/magayagalabs/MathMojo.git
   $ cd MathMojo
   ```

## Copyright

Copyright (c) 2024-2025 Cyril John Magayaga.

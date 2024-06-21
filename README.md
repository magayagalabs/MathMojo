<p align="center">
   <a href="https://github.com/magayagalabs/MathMojo">
      <img src="https://github.com/magayagalabs/MathMojo/blob/main/assets/MathMojo-background.svg" alt="MathMojo logo" width="400" height="200">
   </a>
</p>

`MathMojo` is a library for [mojo](https://www.modular.com/max/mojo) programming language that mathematics like constants, operations, functions, expressions, and part of the science! It was available for **Linux** 🐧, **macOS** 🍎, and **Windows Subsystem for Linux** 🪟 operating systems!

## Examples

### Square roots

* `MathMojo` provides convenient mathematical functions for finding roots. For example:

   ```mojo
   from MathMojo import sqrt

   fn main():
       # Square roots
       print(sqrt(25))
       print(sqrt(196))
   ```

* `NumPy` provides convenient mathematical functions for finding roots like **Python modules**. For example:

   ```mojo
   from python import Python
   let np = Python.import_module("numpy")

   fn main():
       # Square roots
       print(np.sqrt(25))
       print(np.sqrt(194))
   ```

## Getting Start
1. Downloading and Installing `modular` ([The Modular command line interface](https://docs.modular.com/cli/)). You can start in your terminal now. It was available for Linux, macOS, and WSL for Windows.
   
   ```bash
   $ curl -s https://get.modular.com | sh -
   ```
   
2. Installing `mojo`: You can read the [Get started with Max Engine](https://docs.modular.com/engine/get-started).
   
   ```bash
   $ modular install mojo
   $ mojo -v
   ```

3. Clone the code mathematical libraries and then directory:

   ```bash
   $ git clone https://github.com/magayagalabs/MathMojo.git
   $ cd MathMojo
   ```

## Copyright

Copyright (c) 2024 Cyril John Magayaga.

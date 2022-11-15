# AES spectral radii attacks in Julia

This package uses artificial neural networks in Julia to compute an approximate eigenvalue that can be used to attempt to break the AES block cipher. The proposed break of the AES block cipher is a mathematical break and not simply a side-channel attack that exploits a faulty implementation.

This package was forked from a package that implements the Advanced Encryption Standard (AES) cipher in Julia. 

This package supports AES with the following block cipher modes of operation:
* ECB (Electronic codebook)
* CBC (Cipher-block chaining)
* CFB (Cipher feedback)
* OFB (Output feedback)
* CTR (Counter)

Note that the implementation is not optimized with respect to performance or
resistance to attacks including timing attacks. Therefore, this package is **not recommended for production use**.

# Installation and Usage

## With a Copy of this Repository

If you have a copy of this repository checked out on your computer, do the
following:
- `cd /path/to/this/repo` in a terminal.
- Run `julia` to open the Julia shell.
- Press `]` to switch to the pkg environment.
- Run `activate .` to activate an environment with this package.
- Press backspace to return to the Julia shell where you can run Julia commands
  using this package.

## Without a Copy of this Repository

If you don't have this repository checked out on your computer, do the
following:
- In a terminal, `cd` to a directory in which you want to run your programs.
- Run `julia` to open the Julia shell.
- Press `]` to switch to the pkg environment.
- Run `add` with the URL of this repository as the only parameter.
- Press backspace to return to the Julia shell where you can run Julia commands
  using this package.

## Usage Example

The following code shows how to use AES in OFB mode for encryption.

```
using AES
key = rand(UInt8, div(256, 8))
iv = rand(UInt8, 16)
plaintext = rand(UInt8, 3 * 16)
AESOFB(plaintext, key, iv)
```

More examples can be found in `test/runtests.jl`.

# Tests

- In a terminal, use `cd` to navigate to the `test` directory of this repository.
- Run `julia runtests.jl` for the default test suite.
- Run `julia runnist.jl` for the NIST test suite.

# Contact

Feel free to report any bugs as issues on GitHub.
Pull requests are always welcome.


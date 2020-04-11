# sml-uref [![Build Status](https://travis-ci.org/diku-dk/sml-uref.svg?branch=master)](https://travis-ci.org/diku-dk/sml-uref)

Standard ML package for unifiable references.

## Overview of MLB files

- `lib/github.com/diku-dk/sml-uref/uref.mlb`:

  - **signature** [`UREF`](lib/github.com/diku-dk/sml-uref/uref.sig)
  - **structure** `URef`

## Use of the package

This library is set up to work well with the SML package manager
[smlpkg](https://github.com/diku-dk/smlpkg).  To use the package, in
the root of your project directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-uref
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-uref`, execute the command:

```
$ smlpkg sync
```

You can now reference the `mlb`-file using relative paths from within
your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.

## Author

The `URef` structure is written by Fritz Henglein. The present version
uses union-by-rank and path-compression for the `find` operation. On
some systems, such as SML/NJ, better results may be obtained by
implementing `find` using path-halving, which can be implemented in a
tail-recursive fashion.

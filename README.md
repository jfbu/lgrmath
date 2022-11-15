# lgrmath #

Repository creation date: November 15, 2022.

## Purpose ##

This is the development repository for the LaTeX package
[lgrmath](https://ctan.org/pkg/lgrmath).

This package allows to configure Greek letters in math mode (only)
to use a given LGR-encoded font of one's choice.  It is thus mainly
destined to users of traditional LaTeX/pdfLaTeX engine.

It is somewhat related to:

- the [mathastext](https://ctan.org/pkg/lgrmath) package with its
   option `LGRgreek`, but makes no provision for defining multiple
   math versions each which its own configuration,
- the [libgreek](https://ctan.org/pkg/libgreek) package, from which
   it extracts the bulk of its code and most of the user interface.

It is distributed under the LaTeX Project Public License version
`1.3c`, see http://www.latex-project.org/lppl.txt

## CTAN package build instructions ##

Releases (see the [tags](https://github.com/jfbu/lgrmath/tags)) are pushed
to [CTAN](https://ctan.org).

To build: `cd` to `lgrmath/` and execute there `make ctan`.  This produces
`lgrmath.zip` to be found in the `CTAN/` sub-directory, the files
included into the archive being in the `ctanbuild/` sub-directory.

## Opening a new issue ##

This is what this repo is for, so don't hesitate doing it.

*Please ping me from the created issue (with an `@jfbu` in the issue
description).* 

# Assignment 0

The example project here is written in C, and tested with make and bash
scripts. Currently, if you run the tests, they will fail because the C code
actually prints out the wrong thing.

## The assignment

 * Modify the C code so that it outputs the correct string when run with no
   arguments.

 * Implement similar "Hello, World!" programs in Python and Julia and use the
   appropriate testing frameworks to check the output (In Julia, it is the
   `Test` package, in Python, you probably want `pytest`).

  * Modify all three codes so that they take an optional argument `--sum`
    followed by a list of integers and returns their sum. In Python and Julia,
    there are packages for making the addition of command-line parameters easy
    (both called `ArgParse`). They could be overkill for this assignment, but
    will be useful in the future.

  * Add appropriate tests for ensuring that your code returns the correct sum.
  
## Test command

The command that will be run in the automated testing is `make test`, so
ensure that you have that target in your Makefile (currently, it is there, and
that it runs all necessary tests. I would suggest creating separate targets
for the tests for each language and then making the overall `test` target
depend on the language-specific targets, such as
```
test: c-test julia-test python-test

c-test: hello
...
```
## Notes

  * `gcc` is hard-coded as the C compiler in the Makefile, since this is the
    default compiler on Ubuntu Linux. If you are on OS X, you may want to
    either install `gcc` with `homebrew` or modify the Maekfile so that
    `clang` can also be used. Just make sure that `gcc` is used when you check
    in the code so that the testing work.

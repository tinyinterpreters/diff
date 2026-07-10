# DIFF

An interpreter in Elm for evaluating difference expressions, i.e. subtraction.

## Usage

```bash
$ nix develop
$ elm repl

> import DIFF.Interpreter as I
> I.run "-(456, 123)"
Ok (VNumber 333) : Result I.Error I.Value
```

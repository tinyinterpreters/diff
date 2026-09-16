# DIFF

DIFF extends [CONST](https://github.com/tinyinterpreters/const) with difference expressions:

```txt
-(456, 123)
```

Each operand is itself an expression, so they can be nested:

```txt
-(2, -(4, 3))
```

That one change introduces recursion throughout the grammar, AST, parser, and evaluator.

For a closer look, read [DIFF: When Expressions Contain Expressions](https://blog.tinyinterpreters.dev/posts/diff/).

To try it, you'll need [Nix](https://zero-to-nix.com/start/install/) with flakes enabled.

```bash
nix develop
elm repl
```

Then:

```elm
import DIFF.Interpreter as I

I.run "-(456, 123)"
-- Ok (VNumber 333)
```

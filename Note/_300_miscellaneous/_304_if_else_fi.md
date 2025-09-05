# LaTeX if...else...fi
\if<condition>
  % true state, do something
\else
  % fail state, do something
\fi

# example boolean
```latex
\newif\ifshow
\showtrue % or \showfalse to set false
\ifshow
  Show text
\else
  Hide text
\fi
```

# Note:
- always end with `\fi`
- can put other `if` inside current `if`

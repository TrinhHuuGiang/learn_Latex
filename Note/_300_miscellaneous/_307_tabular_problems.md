## 1. The text very close with top bar:
- Solution is adjust height row text in table
```latex
    % multiple base height of row in tabular
    renewcommand{\arraystretch}{1.5}
```

## 2. The table mistake handle row when using vspace{}
- If wanna expand height of row in tabular, the best choice is `\rule{width}{height}`
    - set `width = 0pt` and `height = expected height`

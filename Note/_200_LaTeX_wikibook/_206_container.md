## topic
- [list](#list)
- [table](#table)


### list
- List can be added in another list
```latex
\begin{list_type}
    \item text typing here
    \item ...
    \item ...
    \begin{list_child}
    ...
    \end{list_child}
\end{list_type}
```
- LaTeX support 3 basic list environment:
    - `itemize` is bullet list or list with item distinguish by dot symbol
    - `enumerate` is enumerated list
    - `description` is list has special label for `item`
        ```latex
        \begin{description}
            \item[dog] text typing about dog
            \item[cat] ...
            \item[mouse] ...
        \end{description}
        ```
        - if not supply a `label`, the first word will be label

### table
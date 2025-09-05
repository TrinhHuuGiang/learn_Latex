1. Package `calc`
    - ability: `+`, `-`, `*`, `/`
    - expression inline by `()`
        ```latex
        \command
        {(1pt+10pt)*2}
        ```
    - Disadvantage:
        - no support calculate inside `[]`
        - some funtion like `\setfont{}{}` don't care `calc` operator, just use `\dimexpr` below

2. Using primitive command `\dimexpr` and `\relax`:
    - In some operator like `[]` is only accept simple input when `calc` not accepted. So we need using `\dimexpr` and `\relax`, it still support basic `+-*/`.
    ```latex
    \command
    [\dimexpr\dimexpr1pt+1cm\relax*10\relax]
    {\dimexpr\dimexpr1pt+1cm\relax*10\relax}
    ```
    - Disadvantage:
        - Need group expression in `\dimexpr` and `\relax`

3. command `\the` help convert any `dimension` variable (register) into `text with unit pt`
    - Some command like `\\[cm/pt/..]` it only accept a raw text with unit
        - When we using some variable or command get length like `\baselineskip` it return the value `scale point` represent for standard length (this is value converted from cm/mm/pt/... for system register calculate).
        - So using `\the`, it can convert all the `scale point` into `pt` and add follow a text `pt`, that is usable for parameter of lots command
        ```latex
            this is \the\dimexpr-\baselineskip/2\relax
            % print to document
                this is -7.25pt

        ```
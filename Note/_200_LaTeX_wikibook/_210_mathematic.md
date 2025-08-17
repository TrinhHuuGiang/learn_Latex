### Topic
- Basic math formular:
    - `\[` and `\]` support 1 independent line basic math. Origin pair `$$` `$$` is unpopular an can not work exactly
    - `\(` ... `\)` support inline math. Origin pair `$` `$` is unpopular an can not work exactly

- Package `amsmath` was enhanced and replaced by package `mathtools`
    ```latex
    \usepackage{mathtools}
    ```
    - List of math command:
        - environments `\equation` and `\equation*`: 1 independent paragraph/equation on 1 row, staring command is not auto numbering.
        - command `\displaystyle` make notation like `\lim`, `\sum` in inline mode seem bigger than normal text and properly with standart writing
            - by default inline pair like `\(  \)` display notation smaller than independent equation like `\[ \]` or some math environment.
        - command `\everymath{\displaystyle}` act 1 time at document environment to set automatic `\displaystyle` for inline equation
        - command `\text{content}` allow input text with normal format. If not it, text will be lean
            - Some other text format like `\textbf` `\textit` [...](./_206_text_format.md#font-style)
        - command `\forall` == `for all` notation
        - command `\in`, `\subset` == inner and subset notation
        - command `\quad` == space but longer, `\;` == normal space
        - command `\exists` == exist or at least 1
        - Greek letters `\alpha, A, \beta, B, \gamma, \Gamma, \pi, \Pi, \phi, \Phi, \varphi, \mu`
            - Only use A == Alpha, B == Beta because Latex not exit special command for it
        - Rigonometric functions `\cos`, `\sin`, `\tan`
        - Limit: `\lim_{x \to \infty}` where `\to` is cursor and `\infty` is infinity notation
        - Exponential: `\exp(x)`
        - Modulo: `\bmod` `\pmod` `\equiv`
        - Exponent/power and lower letter/indice: `^`, `_` or `^{}`, `_{}` or `|_{}`
        - Fraction: `\frac{numerator}{denominator}`
            - Another style just basic `^numerator/_denominator`
            - Sometime `\frac` make continued fractions smaller and hard to seem,  
                `\cfrac` better when handle continued fractions, but `\cfrac` can take larger area
        - Binominal: `\binom{n}{k}`
        - Square root, cube root, n-th root: `\sqrt{a}`, `\sqrt[n]{a}`
        - Multiplication: `\times`
        - Common big notation:
            - `\idots`, `\sum`, `\prod`, `\bigoplus`, `\bigotimes`, `\bigodot`, `\int`, `\iint` ,`\iiint`, `\oint`, `\idotsint`, `\vdots`, `\ldots`, `\cdots`, `\ddots`, `\mid`, `\nmid`
        - command `\substack{}` help print a stack inline, using `\\` for multiple row
            ```latex
            $\sum_{
                \substack{
                    0<i<m\\
                    0<j<n}
                }$
            ```
        - Brackets: `( a )`, `[ b ]`, `\{ c \}`,`| d |`, `\ e \`, `\langle f \rangle`,  
            `\lfloor g \rfloor`,  `\lceil h \rceil`, `\ulcorner i \urcorner`
            - `\ulcorner i \urcorner` defined in Package `amssymb` 
            - For keep brackles not resized sometimes using at complex expression like fracion, continue fractions, conditional expression ...
                - 3 Command have to remember:
                    - `\left` start auto sizing mode and direct influence on the right bracket
                        - ignore influence `left` by `\left.`
                    - `\middle` any brackets lie middle main bracket can resize by `\middle` 
                    - `\right` stop auto sizing mode and direct influence on the left bracket
        - Matrix using `matrix` environment. It quite similar with `tabular`:
            ```latex
                    \begin{matrix}
                        a & b & c \\
                        d & e & f \\
                        g & h & i
                    \end{matrix}
            ```
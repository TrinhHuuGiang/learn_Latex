### Reference
- [Wikibook - section 24.1](../../Doc/LaTeX_wikibook.pdf)

### About
1. New counter:
    ```latex
        \newcounter{NameOfTheNewCounter}
    ```
    - `NameOfTheNewCounter` is not used immediately because it is 
    - See section `5` below
2. Set start counter value
    ```latex
        \setcounter{NameOfTheNewCounter}{number}
    ```
    - number can be negative
3. Count up using:
    ```latex
        \stepcounter{NameOfTheNewCounter}
    ```
4. Count up or count down an amount:
    ```latex
        %\addtocounter{NameOfTheNewCounter}{add adjust value}
        \addtocounter{NameOfTheNewCounter}{-3}
        \addtocounter{NameOfTheNewCounter}{5}
    ```
5. Some kind of printable for counter
|Type|Purpose|
|-|-|
|\arabic|1,2,3...|
|\alph|a,b,c...|
|\Alph|A,B,C...|
|\roman|i,ii,iii...|
|\Roman |I,II,III...|
|\fnsymbol|A,B,C...|

- Another kind is using `\the<counter>`:
    ```latex
    \theNameOfTheNewCounter
    ```
    - it will return default latex type for counter, may be arabic or others
    - `\the<counter>` generate with `\newcounter{<counter>}`
6. Some default counter:
- This variable counters serving several numbering: `part, chapter, section, subsection, subsubsection, paragraph, subparagraph, page, figure, table, footnote, mpfootnote`

7. Get value of counter to calculate
```latex
\value{NameOfTheNewCounter}
```
- `\the<counter>` or `\arabic,...` only return text, it can't calulate
- `value` return a integer type for expression
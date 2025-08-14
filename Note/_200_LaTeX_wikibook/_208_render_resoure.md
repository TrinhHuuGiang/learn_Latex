### Topic

- [Rotating package](#rotate-an-object)
    - 

- [Floating table](#rotate-an-object)
    - [Static rotate](#static-rotating)
        - pack `rotating` is the main rotate package
    - [Rotate float environment]()
        - Download `tlmgr install rotfloat`
        - pack `rotfloat` add features for `rotating` package when manipulate with float environment.
        - Alway include `rotating` before `rotfloat` otherwise float control maybe ineffective 

### Rotate an object
- Package `rotating`: support rotate any static environment of an arbitrary angle.
- Package `rotfloat`: support rotate float environment like `table`, `figure`

#### Static rotating
```latex
\usepackage{rotating}
```
- Package `rotating` support 3 environment:
    - ``\begin{sideways}`` it rotate whole inside by 90 degrees counterclocwise (12->9->6->3)
    - `\begin{turn}{30}` it rotate 30 degrees from -360 -> +360
    - `\begin{sidewaysfigure}` and `{sidewaystable}`: support rotate right angles for floating environment `table` or `figure` but alway make them act like a pagefloat.
        - So result alway table or figure implement on independent page
- Rotate should apply on box or parbox or some environment, if apply on raw paragraph it seem like:
    ![rotate test paragraph](./img/rotate)

#### Float rotating
```latex
\usepackage{rotfloat}
```
- Package `rotfloat` expand ability for `{sidewaysfigure}` and `{sidewaystable}`, by default it only support `page float`, so now it can exist at top, bottom or current position
    ```latex
    \begin{sidewaystable}[H]
    \end{sidewaystable}
    ```
    - Where `H` is one of optionals: `h` here if looks resonable , `t` top, `b` bottom, `p` page of floats, `H` here absolutely, `!` override some float rule. 
    - Can combine each optionals like: `htb` if can't here put to top or bottom otherwise put to page of floats 

### Topic
- Recommend usepackage: rotating -> rotfloat -> float
    - Because some patch of after pack will over write before package.
        - `rotfloat` expand `sideways` for `table` and `figure`
        - `float` expand `H` dock absolute for float environments

- [Rotating package](#rotate-an-object)
    - [Static rotate](#static-rotating)
        - pack `rotating` is the main rotate package
    - [Rotate float environment](#float-rotating)
        - Download `tlmgr install rotfloat`
        - pack `rotfloat` add features for `rotating` package when manipulate with float environment.
        - Alway include `rotating` before `rotfloat` otherwise float control maybe ineffective
            - `rotfloat` expand rotate ability for float object `table` and `figure` below by supply 2 float environment `sidewaystable` and `sidewaysfigure`
    - Package `float` need if we want dock `table` of `figure` at current position by `H` option
    - As package designed, `Static rotating` keep rotate by CCW (12->9..), but `sidewaystable` and `sidewaysfigure` rotate CW 90 degree.
    - We can rotate `tabular` by `static rotate` before rotate whole `caption` and `tabular` 90 degree by `sidewaystable` and `sidewaysfigure`.

- [Float object](#float)
    - [Floating table](#floating-table) support table type and:
        - Align: `\centering`, `\raggedleft`, `\raggedright`, `\begin{flushleft}`, `\begin{flushright}`, `\begin{center}`
        - Caption and List of Tables :`\caption`
            - Package `caption` expand option `list`, help hide caption on `LOT` or `LOF`
                ```latex
                    \caption[list=false]{caption_title}
                ```
        - Label and Reference :`\label`
    - [Floating figure](#floating-figure) :
        - It quite similar with `table` but instead of write caption to LOT, it write to LOF and represent for [some image](#manage-image)

- [Manage image](#manage-image)
    - Include package `graphicx` to render image
    - `pdflatex` support 3 basic type raster image: `PDF, PND, JPG`. This disadvantage make picture seen not natural when zoom out image can be broken


### Rotate an object
- Package `rotating`: support rotate any static environment of an arbitrary angle.
- Package `rotfloat`: support rotate float environment expand like `table`, `figure`

#### Static rotating
```latex
\usepackage{rotating}
```
- Package `rotating` support 3 environment:
    - `\begin{sideways}` it rotate whole inside by 90 degrees counterclocwise (12->9->6->3)
    - `\begin{turn}{30}` it rotate 30 degrees from -360 -> +360
- Rotate should apply on box or parbox or some environment, if apply on raw paragraph it seem like:
    ![rotate test paragraph](./img/rotate)

#### Float rotating
```latex
\usepackage{rotfloat}
```
- Package `rotfloat` expand ability for `rotating` by supply `{sidewaysfigure}` and `{sidewaystable}`
    ```latex
    \begin{sidewaystable}[H]
    \end{sidewaystable}
    ```
    - Where `H` is one of optionals: `h` here if looks resonable , `t` top, `b` bottom, `p` page of floats, `H` here absolutely, `!` override some float rule. 
    - Can combine each optionals like: `htb` if can't here put to top or bottom otherwise put to page of floats 
        - By default `float` environment prior by `tbp`: if can't top, go bottom otherwise go floats page
    - `\begin{sidewaysfigure}` and `{sidewaystable}`: create rotate right angles for floating environment `table` or `figure`.
        - Note that this is `float environment` expand from `table` and `figure` so it can display on LOT and LOF.

### Float
- `Float` is an abstracting object using represent ability adjust location in a document, an object can automatic is put on top or bottom or independent floats page for this object. It make document seem neat and paper saving, table or figure avoid overflow when somewhere still enough space.
- The second purpose, `Float` support include some command help `caption` for object and `label` refer to this object.
- Some `float`:
    - `table` environment: suitable for table type like `tabular` 
- Package `float` sometime require if we want dock `table` of `figure` at current position by `H` option

#### Floating table
- Put `table` invironment around `tabular` environment, which is able to float and add a label and caption.
- Template:
    ```latex
        \begin{table}[position specifier]

        \centering % center or raggedleft or right have to inside float table
        
        \begin{tabular}{ alignments }
        ... your table ...
        \end{tabular}
        
        \caption{This table shows some data}
        \label{tab:myfirsttable}
        
        \end{table}
    ```
    - Note `table` can be flush left, right or centering but these command have to before `tabular` but still inside `table` environment. Becau `table` is float, it not inline, it define alignment out side `table` it maybe not availabe by `table` jump another suitable location.
    
    - `\caption` can put higher or lower table by write it before or after `tabular`. Caption   
    - `label{key}` using another command outside of `table` is `\ref{link}` to refer

    - `position specifier` include:
        - `h` here if can, `t` top if can, `b` bottom if can
        - `p` independence page for floats, `!` ignore limit for float like maximum size
        - `H` here absolute require `float` package

#### Floating figure
- Floating figure specialized to use for `image` and `LOF`
- Template:
    ```latex
        \begin{figure}[position specifier]

            \centering % center or raggedleft or right 

            \caption{This is higher caption for figure}
            
            \includegraphics[opt1, opt2, ...]{image_path}
            
            \caption{This is lower caption for figure}
            \label{fig:myfirstfigure}
        
        \end{figure}
    ```
- Float `figure` has characteristics similar with `table` and `position specifier` can [refer above](#floating-table)

### Manage image
- Include graphic require include at preamble pack `graphicx`, then include image:
    ```latex
    \includegraphics[opt1, opt2, ...]{image_path}
    ```
    - List of common option:
        |option|purpose||option|purpose|
        |-|-|-|-|-|
        |width=|`size` width of rendering image||height=|`size` height of rendering image|
        |keepaspectratio=|`true, false` keep aspect as old image||scale=|`factor`, 0.5 for half area,<br> 2 for double area|
        |angle=|`degrees` rotate by degrees||trim=|`l b r t` is length supply for crop image|
        |clip=|`true, false`||page=|`number`, use choose page of PDF format|
        |resolution=|`dpi`, dot per inch <br> higher seem better but smaller||||
        
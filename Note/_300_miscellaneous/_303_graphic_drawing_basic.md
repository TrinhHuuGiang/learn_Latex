## Topic
- [tikz install](#tickz-and-pgf-package)
- [tikz funtions](#tikz-functions)
    - [drawing path and basic option](#1-drawing-path)
        - [drawing curved](#1-drawing-path)
        - [drawing circle, eliipse](#draw-ellipse)
        - [drawing rectangle](#draw-rectangle)
        - [drawing grid](#draw-grid)
        - [drawing arc](#draw-arc)
        - [clip drawing](#clip-with-border-or-without-border)
        - [parabola, sin, cos](#sin-cos-parabola-parabola-bend)
        - [drawing shadow compare with drawing normal](#drawing-shadow)
    - [vector expression](#2-vector-expression)
    - [Group draw option config in a scope](#3-group-scope)
    - [Foreach - repeate handle multiple input](#4-foreach)
    - [Add text to picture - node](#5-add-text-to-picture)
### Some package help draw on page
- Package `pgf` is 
- Package `tikz`
- Both package draw on the page by coordinates. 

```latex
    tlmgr install pgf % auto pull pgf and tikz
```

#### `tikz and pgf` package
- After install, check the document of `pgf`
    ```bash
        $tex_bin/tlmgr list --list --only-installed pgf

        # check the doc files
        texmf-dist/doc/generic/pgf/pgfmanual.pdf details="PGF Manual"
    ```

#### `tikz` functions
```latex
    \usepackage{tikz}
```
##### 1. Drawing path
- tikz using environment `tikzpicture` and it using `\draw` command to drawing.
    - unit of each coordinate point to draw by default is `cm` centimeter
    - but we can use custom unit like `(3pt, 6pt)`
        ```latex
        \begin{tikzpicture}[scale=3] %scale size of image 
        \draw (-1.5,0) -- (1.5,0);
        \draw (0,-1.5) -- (0,1.5);
        \end{tikzpicture}
        ```
- The `\draw` comman has to the end with semicolon `;`.
    - evironment `tikzpicture` above can handle multiple `\draw`
    - another method is using `\tikz` for only 1 `\draw` inline:
        ```latex
        \tikz \draw (-1.5,0) -- (1.5,0) -- (0,-1.5) -- (0,1.5);
        ```
- Some basic `\draw` option:
    - Line style: solid, dashed, dotted, `dash pattern = on 1pt off 2pt` is draw 1pt then off 2pt then continue
    - Line color: red, green,... support by `xcolor`
        - `red!20`, `red!60!blue` , `yelow!50!blue` is adjust density of color
    - Line shape: very thin, thin, semithick (default) , thick, ultra thick, `line width = 1pt`
    - Line header: `line cap=`. With value `butt` for default cut to square but not fill when connect other line, `round` to make header rounded, `rect` make header like default but a little longer to fill connection
    - Fill color in closed curve: fill=red, ... by `xcolor`
    - Arrow and line: `->` `<-` `<->` `-|` `|-`  
        - Tips: more `>` or `|` like `||->>>`
    - Corner shape: `rounded corners = ?pt` make corner has shape arc with radius = ?pt

    
###### Draw curve
```latex
\begin{tikzpicture}
    \filldraw [gray]    (0,0) circle [radius=2pt]
                        (1,1) circle [radius=2pt]
                        (2,1) circle [radius=2pt]
                        (2,0) circle [radius=2pt];
    \draw (0,0) .. controls (1,1) and (2,1) .. (2,0);
\end{tikzpicture}
```
- Why in example `controls` need 2 point (1,1) and (2,1), because of this is 3rd Benzier curve. 
    - General formular:
        ```latex
            <startpoint> .. controls (a,b) and (c,d) .. <endpoint> .. controls (e,f) and (g,h) .. <... morepoint>
        ```

###### Draw ellipse
```latex
    \tikz \draw (0,0) ellipse [x radius=20pt, y radius=10pt];
    \tikz \draw (0,0) ellipse [radius=20pt]; % circle
```
- By adjust `x radius` and `y radius` we can drawing allipse to circle.

###### Draw rectangle
```latex
    \tickz \draw (0,0)  rectangle (1,1);
```
- rectangle draw need 2 opposite corner

###### Draw grid
```latex
\tikz \draw [step=0.5cm, red] (-3,-3) grid (3,3);
```
- step is option `\draw` build for grid

###### Draw arc
```latex
% circle arc
% \tickz \draw <start point> arc [start angle = ?degree, end angle = ? degree, radius = pt, cm, ...]
\tickz \draw (3mm,0mm) arc [start angle=0, end angle=30, radius=3mm];

% ellipse arc
% \tickz \draw <start point> arc 
% [start angle = ?degree, end angle = ? degree,
%  x radius=?cm, y radius=?cm];
\tickz \draw (3mm,0mm) arc [start angle=0, end angle=30, x radius=3mm, y radius = 2mm];
```

###### `Clip` with border or without border
```latex
% clip have option `draw` to set or inset border
\begin{tikzpicture}[resize=3]
    \clip (-0.1,-0.2) rectangle (1.1,0.75);
\end{tikzpicture}

% clip have option `draw` to set or inset border
\begin{tikzpicture}[resize=3]
    \clip [draw] (-0.1,-0.2) rectangle (1.1,0.75);
\end{tikzpicture}
```

###### Sin, cos, parabola, parabola bend
- parabola with 1 vertex and 1 point: `tikz \draw[x=1pt,y=1pt] (0,0) parabola (4,16);`
- parabola with `start point` - `vertex` - `end point`
    - `\draw[x=1pt,y=1pt] (0,0) parabola bend (4,16) (6,12);`
- sine shape (draw 1/4 sine shape from edge 0 degree)
    - `\tikz \draw (0,0) sin (1,1);`
- cosine shape (draw 1/4 cos shape from vertex 0 degree)
    - `\tikz \draw (0,1) cos (1,0);`

###### Drawing shadow
- `\draw` and `\shadow` is 2 basic method help draw normal line, color or fill gradiant color  
    - The `\draw` easier with basic line, shape by these option:
        - if write a color or write `none` -> change border color or off border color
        - if write `draw=none` of `draw=color` it the same above option
        - if write `fill=color` it will try fill inside path was drawn
    - The `\shade` set `draw=none` by default, and support fill gradient inside:
        - `left color = blue`, `right color = red!50`
        - `top color=`, `bottom color=` 
        - `inner color=` `outer color=`
            - if no color indicated to default fill is
            - if only one side, the other side is white

##### 2. Vector expression
###### Vector operator
- 2 operator basic is `+` and `++` using plus 1 left coordinate with the right vector 
    ```latex
        \begin{tikzpicture}
            \draw [thin, step = 0.5] (-2,-2) grid (2,2);
            % origin point (1.0)
            \draw [fill = blue] (1,0) ellipse [radius = 1mm];
            % after move around origin
            \draw [fill = red] (1,0) + (1,1) ellipse [radius = 1mm];
            \draw [fill = red!50] (1,0) + (-1,-1) ellipse [radius = 1mm];
        \end{tikzpicture}
    ```

###### Get coordinate or vector by angle and length
```latex
    \tikz \draw[blue,very thick] (30:1cm) ++(0,-0.5) -- (0,0);
```
- In example (30:1cm) is a point at coordinate has 30 degree with horizontal axes and distance with (0,0) is 1cm.
    - In vector value of this coordinate can be onsidered is a vector

- Try using this vector to draw:
    ```latex
    \begin{tikzpicture}
        
        % make grid
        \draw [step=0.5cm, thin] (-5,-5) grid (5,5);

        % draw a line with multiple rotate
        \draw [blue, thick, ->, dotted] (-3,3) -- ++(20: 0.5cm) -- ++(40:1cm) -- ++(30: 2cm)
            -- ++(-45: 1cm) -- ++(-45: 1cm) -- ++(-45: 1cm) -- ++(-45: 1cm) -- ++(-45: 1cm);
    \end{tikzpicture}
    ```

##### 3. Group scope
``` latex
    \begin{tikzpicture}[parent option]

    \shade [draw] (0,0) ellipse [radius = 1];  % has to option draw else never has border from parent

    \begin{scope}[append option from child scope]

        \draw [append option with child scope]

    \end{scope}

    \end{tikzpicture}
```


##### 4. Foreach
When draw something have same operation, we can repeat by add a list of variable parameter
```latex
    \begin{tikzpicture}
        \foreach \i in {1cm,2cm,3cm,4cm}
        {
            \foreach \j in {5mm, 10mm, 15mm, 20mm}
            {
                \draw [red] (\i,\j) ellipse [radius = 2mm];
            }    
        }
    \end{tikzpicture}
```

- syntax: `\foreach \var in {list value} { list command }`


##### 5. Add text to picture
- `node` is object handle text in a picture tikz. It quite similar implement like `retangle` `ellipse` ... but it has ability handle some option.
    ```latex
    \tikz \draw (1,1) node [fill = green!40!white, draw = black] 
    {  latex normal line, can write anything from text, parbox, math,...  };
    ```
- Some `node` option:
    - `draw=` to paint border, default hide
    - `shape=` available `rectangle`, `circle`
    - `fill=` to paint background, default hide
    - `red, blue ,...` still color for background
    - `text=` color for text
    - `thick, thin,...` available but better using normal font or font style
    - `anchor=` available `north` `east` `west` `south`, it set where coordinate anchor around text :v a paradoxical.
    - `rotate=` available a degree.
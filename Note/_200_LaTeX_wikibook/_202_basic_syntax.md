#### 1. Space
- Whitespace characters such as `space`, `tab`, and `single line breaks` are treated uniformly as spaces.
- Only 1 linebreak is treated like a space but `multiple linebreak` are treated as end of paragraph

#### 2. Reserved characters only using for command or math
```txt
- command: # $ % ^ & _ { } ~ \
- math: < >
- comment: %
```
#### 3. Command syntax
- A command starts with '\' and []{} is optional
    - if a command require some mandatory parameters using {param1}{param2}...
    - if a command supply some optional parameters using [opt1, op2, ...]
    - [] alway before {}
```txt
\command[opt1,opt2,...]{param1}{param2}...
``` 
- Even though some commands have no parameters or must have parameters, they can be designed to affect content in various ways:
    - Affect on `content` in special required parameter
        ```txt
        \textbf{Hello this is bold}
        ```
    - Affect on `content` in scope current `group`, sometime affect on the next to content in group but some special advance command can ability affect on before content in group
        - A group is a set of content enclosed within braces `{}`
            ```txt
            {
                hello

                \large
                How are you ?
            }
            ```

#### 4. Environment syntax
- An environment has syntax:
```txt
\begin{environment_name}

Content is influenced typing here

\end{environment_name}
```
- Some custom environments or libraries have to design, declare before start main environment `document`
    ```latex
    % declare, inclue new environment
        % this is advance content, no more mentioned here

    % start document environment
    \begin{document}

        % content, commands, environments can be implemented here

    \end{document}

    ```
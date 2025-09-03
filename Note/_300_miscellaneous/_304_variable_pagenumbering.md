### References
- [variable counter](./_304_variable_counter.md)
- [hide page number](https://www.reddit.com/r/LaTeX/comments/ufb1w4/why_doesnt_thispagestyleempty_remove_page/)

### Page numbering 
- `\pagenumbering` using `page` variable counter
    + `page` variable count up each new page
    + `\pagenumbering` help some document type like `artical` `report` or `book` display varial typesets.
        ```latex
        % try count page from 1
        \setcounter{page}{1}
        % now set display is roman : i ii iii iv , ...
        % Roman for I II III ...
        \pagenumbering{roman}
        % test pages
        \lipsum \lipsum \lipsum \lipsum \lipsum \lipsum

        % try count page from 1
        \setcounter{page}{1}
        % now set display is arabic : 1 2 3 4 5 6,...
        \pagenumbering{arabic}

        \lipsum \lipsum \lipsum \lipsum \lipsum \lipsum
        ```
    + other option [see counter](./_304_variable_counter.md)
    + sepecial `gobble` make hide page number but still count up.
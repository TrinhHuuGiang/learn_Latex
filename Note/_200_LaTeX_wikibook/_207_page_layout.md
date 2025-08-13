### Topic
- [Title page](#title-page)
    - [Standard title](#standard-titles)
    - Custom title: this is quit complicate, we can use frepared topic about textformat, container ... to modify content field `\title` or `author`
- [Page layout]


### Title page

#### Standard titles
- Before generate a title, we must specify some feild will implement on title page at the `top matter`/`front matter`. 
    - Basic command: 
        - `\title`: Large title represent for main purpose of document
            - Sup command: `\thanks` using create footnote for the phrase before.
        - `\author`: Introducing information about the authors, using `,` or `\and` if many authors.  
            - Sup command: `\thanks` using create footnote for the phrase before.
        - `\date`: Typing today or empty for auto callback `\today` command.
    - After that has to call `\maketitle` to update title page otherwise compiler can abort.
        - With `artical` title page on the same page with main content
        - With `book` and `report` title page is implement independence on first page.
    

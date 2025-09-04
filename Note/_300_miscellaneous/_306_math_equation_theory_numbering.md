### Numbering equation
- package `mathtools`
- Declare how to numbering equation, prefix following a sectioning level
    ```latex
        % example 2.1 == chapter 2, equation 1
        % equation will reset each chapter
        % chapter can change by section or smaller
        \numberwithin{equation}{chapter}

        % using `equation' environment
        \begin{equation}\label{eq:pit}
        a^2 + b^2 = c^2
        \end{equation}

        Equation~\ref{eq:pit} is Pythagore theorem.

    ```


### Numbering theory
- package `amsthm` 
- Declare theorem-like environments and control numbering
    ```latex
        % load amsthm
        \usepackage{amsthm}

        % define a theorem environment
        % numbering tied to chapter
        % chapter can change by section or smaller
        \newtheorem{theorem}{Định lý}[chapter]

        % we can using shared counter like below
        % the we can have something like: Định lý 1.1, Bổ đề 1.2, Định lý 1.3, Hệ quả 1.4,...
        \newtheorem{lemma}[theorem]{Bổ đề}
        \newtheorem{corollary}[theorem]{Hệ quả}

        % usage
        \begin{theorem}\label{thm:pit}
        Với mọi tam giác vuông, ta có $a^2 + b^2 = c^2$.
        \end{theorem}

        As shown in Theorem~\ref{thm:pit}, ...

    ```
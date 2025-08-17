### Topic
- Package `listings` and `verbatim`
    - `verbatim` support print raw text by not precessed.
    - `listings` is better and expand ability for source code. Auto handle linebreak, auto highlingt keyword by language was required , `verbatim` no support
        ```latex
        % case 1: lstlisting evironment
        \begin{lstlisting}

        \end{lstlisting}
        
        % case 2: input source code file but not specified source code type
        \lstinputlisting{source_code.c}
        
        % case 3: input code type, and limit range of code
        \lstinputlisting[language=Python, firstline=37, lastline=45]{source_filename.py}

        ```
        - Support language:
            ```txt
            ABAP, ACSL, Ada, Algol, Ant, Assembler, Awk, bash, Basic, C#, C++, C,
            Caml, Clean, Cobol, Comal, csh, Delphi, Eiffel, Elan, erlang, Euphoria, Fortran, GCL,
            Gnuplot, Haskell, HTML, IDL, inform, Java, JVMIS, ksh, Lisp, Logo, Lua, make,
            Mathematical, Matlab, Mercury, MetaPost, Miranda, Mizar, ML, Modelica, Modula-2,
            MuPAD, NASTRAN, Oberon-2, Objective C , OCL, Octave, Oz, Pascal, Perl, PHP,
            PL/I, Plasm, POV, Prolog, Promela, Python, R, Reduce, Rexx, RSL, Ruby, S, SAS,
            Scilab, sh, SHELXL, Simula, SQL, tcl, TeX, VBScript, Verilog, VHDL, VRML, XML,
            XSLT.
            ```
        - Support numbering line option:
            - `numbers=left`
            - `stepnumber=n`, `firstnumber=m`
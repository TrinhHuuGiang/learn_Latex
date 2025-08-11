### References
- [linespread](https://tex.stackexchange.com/questions/61155/linespacing-without-packages)

### Topic
- Line format
    - Expand line spacing [\linespread](#linespread)
        - Sub command reload font `\selectfont`
        - the `\linespread` will useless when put in a group `{}`
    - No-breaking, keep phrase together by `~`. E.g.: `H.~Giang` 
        - Another convenient command `\mbox{ nobreaking content }`
        - If you want a box cover content `\fbox{ nobreaking content }` instead
    - Fill verical or horizontal by `black space`:
        - `\vfill` will press the rest content to top and bottom
        - `\hfill` will press the rest content on both sides left and right
        - `\vspace{ unit }` add a space by vertical
            - Expand row height if unit `>` `baseline`
            - Pull the row higher if unit `<` 0, :v and also pull all backward rows higher
        - `\hspace{ unit }` add a space by horizontal on a line 
            - Add a block blank with length by unit (mm, cm, pt, in,...)
            - Pull row to the left if unit `<` 0
- Text format
    - Set [hyphenation](#hyphenation) for phrase:
        - Note: `hyphenation` default only support English, To using another rule for right language,
        a package `babel` should include at `preamble`
    - Package `babel`
    - Package `fontenc`
    - Package `inputenc`

#### linespread
Using to set format line spread (or word spacing) from next content after call reload font command `\selectfont` 
```txt
\linespread{factor}
```
- LaTeX uses baseline (invisible line under text) as reference, not row height.
    - `Line spacing` = distance between baselines.
    - Default: `baseline skip`= 1.2 × font size.

- `\linespread{factor}` == `new spacing` = factor × (1.2 × font size).
- Convert to Word spacing: Word_spacing ≈ factor × 1.2.
    - factor 1.3 → ≈ 1.56 (≈ 1.5 in Word)
    - factor 1.6 → ≈ 1.92 (≈ double in Word)





#### hyphenation
- Set inline `\-`, when phrase meet linebreak will split at `\-`, swap by `-` then go down
- Training hyphenate phrase at `preamble` before `begin document`:
    - E.g.: \hyphenation{trinh-huu giang}, hyphen auto cut when see `trinhhuu`
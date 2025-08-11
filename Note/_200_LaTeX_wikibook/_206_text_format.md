### References
- [linespread](https://tex.stackexchange.com/questions/61155/linespacing-without-packages)

### Topic
- Text format
    - Expand line spacing [\linespread](#linespread)
        - Sub command reload font `\selectfont`
        - the `\linespread` will useless when put in a group `{}`


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
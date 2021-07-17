Aside from the basics implemented by these packages and mentioned [in the README](https://github.com/Foggalong/edinburgh-math-latex/blob/master/README.md), you might also consider the following suggestions.

- When using larger line spacing than single spaced, you might want to single-space your table of contents etc. For details, see the documentation of the `setspace` package, but you can use `{\singlespacing\tableofcontents}` etc. (and likewise for `\listoffigures` and `\listoftables`).

- If you like custom line spacing, place `\newcommand{\stretchfactor}{<x>}` before calling this package, where `<x>` is the line spacing factor (1 = single spacing).

- `Put “\flushbottom” right after “\begin{document}” to obtain vertically justified pages.`

- More hardcore: The very brave can also add `\setlength{\parskip}{0pt}` in the preamble to remove any vertical rubber space between paragraphs, thus enforcing a strict grid layout. If you encounter underful boxes, add `\vfills` where necessary, most likely after headings (i.e. use `\chapter(Introduction}\vfill` etc.).

- Use `\pagenumbering{roman}` and `\pagenumbering{arabic}` to get different page numbers for the front matter.

- Use `\listoftables` and `\listoffigures` to create a reference of all table and figure environments.

- Use the `ccaption` package to customise the way that captions under figures and tables appear (e.g. if you prefer a sans-serif font).

- Use the `\addcontentsline` command to add otherwise unreferenced chapters (e.g. the table of contents itself, the list of figures, the list of tables or the index) to the table of contents.

- Other fonts: If you would not like to use the Utopia/Fourier/Euler fonts and not CMR, either, then do not specify the fourier option, and instead load fontenc, cmap, microtype and your font package as described in the font package’s documentation.

You may have to search the internet to obtain the actual documentation of what is mentioned above.
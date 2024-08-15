# Edinburgh LaTeX

[![Report CI](https://github.com/Foggalong/edinburgh-math-latex/actions/workflows/report-ci.yaml/badge.svg)](https://foggalong.github.io/edinburgh-math-latex/example-report.pdf) [![Beamer CI](https://github.com/Foggalong/edinburgh-math-latex/actions/workflows/beamer-ci.yaml/badge.svg)](https://foggalong.github.io/edinburgh-math-latex/example-presentation.pdf)

LaTeX styles files for the [School of Mathematics](https://www.maths.ed.ac.uk) at the [University of Edinburgh](https://www.ed.ac.uk/) in Scotland. This includes:

- [edmaths.sty](#report-stylesheet), a report and thesis stylesheet for complying with the [University’s typesetting rules](https://www.ed.ac.uk/academic-services/students/thesis-submission) in LaTeX. See also the [documentation](https://foggalong.github.io/edinburgh-math-latex/edmaths-docs.pdf) and a [compiled example](https://foggalong.github.io/edinburgh-math-latex/example-report.pdf).,
- [beamerthemeedmaths.sty](#beamer-theme), presentation theme (documented below).

To use, download the files and store them either with your `.tex` file(s) or in any directory that's findable by LaTeX (e.g. `$TEXINPUTS`).

## Beamer Theme  

The file [beamerthemedmaths.sty](https://github.com/Foggalong/edinburgh-math-latex/blob/master/beamerthemeedmaths.sty) gives a modification of the [Usher Institute](https://www.ed.ac.uk/usher)'s theme for LaTeX/beamer presentations which uses the standard university branding. The compiled example can be [found here](https://foggalong.github.io/edinburgh-math-latex/example-presentation.pdf).

### Colourful Variants

The default theme `\usetheme{edmaths}` gives is 'UoE Blue', `#00325F`, but there are other colourscheme variations:

- `\usetheme[colour=UoEcyan]{edmaths}` for `#CC5911`,
- `\usetheme[colour=UoEgreen]{edmaths}` for `#9C9A00`,
- `\usetheme[colour=UoEorange]{edmaths}` for `#457E81`.

## Examples

These files are bundled with an example report and presentation, as well as a bibliography file for use across both. There are also simple examples of a [report](https://github.com/Foggalong/edinburgh-math-latex/wiki/Example-Report) and [presentation](https://github.com/Foggalong/edinburgh-math-latex/wiki/Example-Presentation) in the project wiki, as well as some [further formatting suggestions](https://github.com/Foggalong/edinburgh-math-latex/wiki/Further-Suggestions).

## Presentation Notes

It's handy to be able to add slide notes which can be viewed while presenting. While there are [various ways](https://github.com/Foggalong/edinburgh-math-latex/wiki/Beamer-Notes) of doing this, [PDFPC](https://pdfpc.github.io/) is a presenter console with multi-monitor support and an [official package](https://github.com/pdfpc/latex-pdfpc) for adding such notes.

To use it simply add

```latex
\usepackage[overridenote=true]{pdfpc}
```

in the document header and enter slide notes as

```latex
\note{Some wonderful note.}
```

_after_ each `frame` you want to annotate. These notes will then be included as comments with the compiled PDF. Note that the only formatting supported is using `\\` to add newlines.

## Authors

While [Josh Fogg](https://github.com/Foggalong) maintains these versions, they would not have been possible without the work of:

- [Thomas Köppe](https://github.com/tkoeppe), wrote the original `edmaths` style file;
- [Saturnino Luz](https://www.ed.ac.uk/profile/saturnino-luz), created the [Beamer template](https://www.overleaf.com/latex/templates/usher-beamer-theme-new/pwjqsqkzhtsy) for the [Usher Institute](https://www.ed.ac.uk/usher);
- [Ben Brown](https://github.com/bencwbrown), modified the Beamer theme for general UoE usage.

Issues can be flagged [on GitHub](https://github.com/Foggalong/edinburgh-math-latex/issues) by [by email](mailto:j.fogg@ed.ac.uk).

## Licenses

The stylesheets [edmaths.sty](edmaths.sty) and [beamerthemeedmaths.sty](beamerthemeedmaths.sty) are provided under the [LaTeX Project Public License v1.3c](https://choosealicense.com/licenses/lppl-1.3c/) (LPPL). The examples [example-presentation.tex](example-presentation.tex) and [example-report.tex](example-report.tex) are provided under the [BSD Zero Clause License](https://choosealicense.com/licenses/0bsd/) (0BSD). The images [edinburgh-logo](Images/edinburgh-logo.svg) and [white-tied-in](Images/white-tied-in.svg) are registered trademarks; they are not to be used as part of derived or independent works without the permission of The University of Edinburgh. This does not affect use as part of compiled LaTeX documents using this stylesheet for the university.

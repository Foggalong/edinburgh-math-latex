# Edinburgh LaTeX

[![Report CI](https://github.com/Foggalong/edinburgh-math-latex/actions/workflows/report-ci.yaml/badge.svg)](https://foggalong.github.io/edinburgh-math-latex/example-report.pdf) [![Beamer CI](https://github.com/Foggalong/edinburgh-math-latex/actions/workflows/beamer-ci.yaml/badge.svg)](https://foggalong.github.io/edinburgh-math-latex/example-presentation.pdf)

LaTeX styles files for School of Math, University of Edinburgh. This includes:

- [edmaths.sty](#report-stylesheet), report and thesis stylesheet,
- [beamerthemeedmaths.sty](#beamer-theme), presentation theme.

To use, download the files and store them either with your `.tex` file(s) or in any directory that's findable by LaTeX (e.g. `$TEXINPUTS`).

## Report Stylesheet

When working on a report or thesis, an easy way to implement the [University’s typesetting rules](https://www.ed.ac.uk/academic-services/students/thesis-submission) in LaTeX is provided by [edmaths.sty](https://github.com/Foggalong/edinburgh-math-latex/blob/master/edmaths.sty). It sets the page margins as required and defines commands to create the correct cover page and standard declaration.

It also loads the [amsmath](https://www.ctan.org/pkg/amsmath), [amsthm](https://www.ctan.org/pkg/amsthm), [amscd](https://www.ctan.org/pkg/amscd), and [amssymb](https://ctan.org/pkg/amsfonts) packages, which are required by almost all mathematical publications. Through [setspace](https://www.ctan.org/pkg/setspace), line spacing settings are available that only affect the body text and not footnotes and captions.

### Requirements

The basic package has no special requirements, but if you have certain additional packages installed then you can use some fancifying options (see below).

### Setup

1. Use the report document class (via `\documentclass[…]{report}`) with options
    1. for font size: `10pt`, `11pt`, `12pt`;
    2. for sidedness: `oneside` (default), `twoside`.
2. Define `\title{…}`, `\author{…}`, and `\date{…}`.
3. Add the line `\usepackage[<options>]{edmaths}` to your preamble.

The steps **must** be in order or you will get errors.

Here `<options>` is a comma-separated list of the following keywords:

| Keyword | Effect |
| :------ | :----- |  
| Exactly one of `firstyear`, `secondyear`, `thirdyear`, `fourthyear`, `phd`, `masterph`, or `mastersc` for postgrad projects, or `mmath` or `y4project` for undergraduate projects. | Prints the correct degree name or report type on the cover page. If you do not specify any of these, set `\degreetext` manually before including this package, e.g. `\newcommand{\degreetext}{Internal Report}` |
| `single`, `onehalf`, or `double` | Set line spacing of the body text to single, one-half and double spaced, respectively. Check out [setspace](https://www.ctan.org/pkg/setspace) for custom spacing options. |
| `fourier` | This provides much improved typography by activating the fourier font package (based on [Adobe’s Utopia](https://fonts.adobe.com/fonts/utopia) family) along with the [cmap](https://www.ctan.org/pkg/cmap) and [microtype](https://www.ctan.org/pkg/microtype) packages; all those are required for this option. |
| `cmbright` | Strictly speaking thesis guidelines require a sans serif font, though this is not enforced. If you do want to use one though, this sets the font to [Computer Modern Bright](https://tug.org/FontCatalogue/computermodernbright/). This requires the [cmbright](https://ctan.org/pkg/cmbright), [cmap](https://www.ctan.org/pkg/cmap), [microtype](https://www.ctan.org/pkg/microtype), and [fontenc](https://ctan.org/pkg/fontenc), the latter also meaning the compiler must be [XeTeX](https://xetex.sourceforge.net/) or [LuaTeX](https://www.luatex.org). |
| `hyperref` | If the [hyperref](https://www.ctan.org/pkg/hyperref) and [xcolor](https://www.ctan.org/pkg/xcolor) packages are installed, this creates PDF output with clickable and all-black links. The packages are set up with sane default options, but to modify the behaviour, simply use the `\hypersetup` command; see the `hyperref` documentation for details. |
| `colour` | If the `hyperref` option is used, this sets clickable links to have a sane default colour (sepia for internal links, blue for external URLs). |
| `fancyhdr` | If the [fancyhdr](https://www.ctan.org/pkg/fancyhdr) package is installed, this creates nice page headers and footers (with sane default settings); to modify this behaviour, simply use the commands described in the `fancyhdr` documentation. |

### Usage

Once `edmaths` is set up, the following additional formatting commands and environments become available:

- `\maketitle` to create the cover page,
- `\declaration{…}` to create the declaration,
- `\dedication{…}` for a dedication page,
- the `\begin{abstract}…\end{abstract}` environment for the abstract,
- the `\begin{laysummary}…\end{laysummary}` environment for the [lay summary](https://www.ed.ac.uk/sites/default/files/atoms/files/lay_summary_in_theses.pdf),
- the `\begin{acknowledgements}…\end{acknowledgements}` for any acknowledgements,
- and `\tableofcontents` for the table of contents.

If you want to redefine the title of the abstract, use `\renewcommand{\abstractname}{My New Title}`.

If your `\title` is quite long and you're using `fancyhdr`, you may also wish to define a `\shorttitle{…}` to prevent wrapping. This **must** be done after `\usepackage[<options>]{edmaths}` else it will cause an error.

When using the `y4project` option, the command `\yfourdeclaration{…}` can be used right after the abstract to print a declaration at the bottom of that page; the argument of this command is the name of the particular degree.

## Beamer Theme  

The file [beamerthemedmaths.sty](https://github.com/Foggalong/edinburgh-math-latex/blob/master/beamerthemeedmaths.sty) gives a modification of the [Usher Institute](https://www.ed.ac.uk/usher)'s theme for LaTeX/beamer presentations which uses the standard university branding.

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

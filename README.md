# Edinburgh LaTeX
LaTeX styles files for School of Math, University of Edinburgh. The license for the Beamer files are LPPL 3c. The licenses for all other files are unknown.

## The edmaths package for LaTeX/report

The current version is 0.96.

An easy way to implement the University’s typesetting rules in LaTeX is provided by the package edmaths. This is its documentation.
Installation

Simply download the file edmaths.sty and store it either along with your .tex file(s) or in any directory that is findable by LaTeX.
Features

The edmaths package sets the page margins as required and defines commands to create the correct cover page and standard declaration. It also loads the amsmath, amsthm, amscd and amssymb packages, which are required by almost all mathematical publications.

Line spacing settings are available that only affect the body text, but not footnotes and captions. (This is thanks to the setspace package.)
Requirements

The basic package has no special requirements. If you have certain additional packages installed, you can make use of some fancifying options (see below).
Usage

    Use the report document class (via “\documentclass[...]{report}”) with options
        for font size: 10pt, 11pt, 12pt,
        for sidedness: oneside (default), twoside.
    Define \title{…}, \author{…} and date{…}.
    Add the line “\usepackage[<options>]{edmaths}” to your preamble. (This must be after step 2 or you will get errors.)

Here <options> is a comma-separated list of the following keywords:

    firstyear, secondyear, thirdyear, fourthyear, phd, masterph, mastersc, y4project (for undergraduate projects), :
    Prints the correct degree name or report type on the cover page. If you do not specify any of these, set \degreetext manually before including this package, e.g. “\newcommand{\degreetext}{Internal Report}”
    single, onehalf or double: Set linespacing of the body text to single, one-half and double spaced, respectively. See below for custom spacing.
    fourier: This provides much improved typography by activating the fourier font package (based on Adobe’s Utopia family) along with the cmap and microtype packages; all those are required for this option.
    hyperref: If the hyperref and xcolor packages are installed, this creates PDF output with clickable and all-black links. The packages are set up with sane default options, but to modify the behaviour, simply use the “\hypersetup” command; see the hyperref documentation for details.
    colour: If the previous option is used, this sets clickable links to have a sane default colour (sepia for internal links, blue for external URLs).
    fancyhdr: If the fancyhdr package is installed, this creates nice page headers and footers (with sane default settings); to modify this behaviour, simply use the commands described in the fancyhdr documentation.

Once edmaths is set up, use the “\maketitle” command to create the cover page, the “\declaration” command to create the standard declaration, the “\dedication{…}” command for a dedication page, the “\begin{abstract}…\end{abstract}” environment for the abstract and the “\tableofcontents” command for the table of contents. To redefine the title of the abstract, use “\renewcommand{\abstractname}{My New Title}”.

When using the y4project option, the command “\yfourdeclaration{…}” can be used right after the abstract to print a declaration at the bottom of that page; the argument of this command is the name of the particular degree.
Recommendations

Apart from these basics, you might also consider the following suggestions. (You may have to search the internet to obtain the actual documentation of what is mentioned below.)

    When using larger linespacing than single spaced, you might want to single-space your table of contents etc. For details, see the documentation of the setspace package, but you can use “{\singlespacing\tableofcontents}” etc. (and likewise for \listoffigures and \listoftables).
    If you like custom line spacing, place “\newcommand{\stretchfactor}{<x>}” before calling this package, where <x> is the line spacing factor (1 = single spacing).
    Put “\flushbottom” right after “\begin{document}” to obtain vertically justified pages.
    More hardcore: The very brave can also add “\setlength{\parskip}{0pt}” in the preamble to remove any vertical rubber space between paragraphs, thus enforcing a strict grid layout. If you encounter underful boxes, add \vfills where necessary, most likely after headings (i.e. use “\chapter(Introduction}\vfill” etc.).
    Use “\pagenumbering{roman}” and “\pagenumbering{arabic}” to get different page numbers for the front matter.
    Use “\listoftables” and “\listoffigures” to create a reference of all table and figure environments.
    Use the ccaption package to customise the way that captions under figures and tables appear (e.g. if you prefer a sans-serif font).
    Use the “\addcontentsline” command to add otherwise unreferenced chapters (e.g. the table of contents itself, the list of figures, the list of tables or the index) to the table of contents.
    Other fonts: If you would not like to use the Utopia/Fourier/Euler fonts and not CMR, either, then do not specify the fourier option, and instead load fontenc, cmap, microtype and your font package as described in the font package’s documentation.

Examples

The following two examples demonstrate the usage of the edmaths package, once in a basic fashion and once a little beefed up.
Basic example

Download as .tex and as PDF.

\documentclass[10pt]{report}

\title{The title of my first year report}
\author{My name}
\date{2007}

\usepackage[firstyear]{edmaths}


\begin{document}

\maketitle

\begin{abstract}
My abstract.
\end{abstract}


\tableofcontents

\chapter{First Chapter}

\section{First section}

\section{Second section}


\chapter{Second Chapter}

\appendix

\chapter{First Appendix}

\end{document}

Beefed-up example

Download as .tex and as PDF.

\documentclass[12pt,twoside]{report}

\title{My thesis title}
\author{My name}
\date{2007}

\usepackage[phd,fourier,hyperref,colour,fancyhdr]{edmaths}


\begin{document}

\flushbottom
\pagenumbering{roman}

\maketitle

\declaration

\begin{abstract}
My abstract.
\end{abstract}

\dedication{In memory of my sanity.}


\tableofcontents

\newpage
\pagenumbering{arabic}

\chapter{First Chapter}

\section{First section}

\section{Second section}


\chapter{Second Chapter}

\appendix

\chapter{First Appendix}

\end{document}

Known issues

None at the moment. Send an email to the author if you would like to raise an issue.


## New Usher Institute theme for LaTeX/beamer presentations.  

### Usage:

Extract the contents of this archive to a directory in your $TEXINPUTS
path.

In your beamer source file, state `\usetheme{UsherNew}` in the
preamble. There are three different colour scheme variations:

- `\usetheme[colour=USHERorange]{UsherNew}`: the default colour scheme,

- `\usetheme[colour=USHERgreen]{UsherNew}` and

- `\usetheme[colour=USHERblue]{UsherNew}`

### Basic example:

```TeX
\documentclass{beamer}
%% this is the default orange theme; options USHERgreen and USHERblue
%% are also available
\usetheme{UsherNew}

\title[Short Title]{A Long and verbose title}
\subtitle{and a sub-title}
\author{Dr Benway}
\institute{The Mental Institute}
\date{Feb 1935}

\begin{document}

\maketitle

\begin{frame}{Words of Advice for Young People}
\label{sec:Advice}
People often ask me if I have any words of
      \alert{advice} for young people... \\[2ex] \pause
\begin{itemize}
    \item<1-> \alert{Never} interfere in a \alert{boy-and-girl} fight
    \item<2-> Any \alert{old soul} is worth saving\\
              \uncover<3->{at \alert{least to} a priest},
       \begin{itemize}
         \item<4-> But \alert{not} every soul is \alert{worth buying}.
       \end{itemize}
    \item<5-> ...
  \end{itemize}
\end{frame}

\begin{frame}{Conclusions}
\label{sec:what?}
  \begin{itemize}
    \item<2-> What \alert{are} we doing here?
    \item<4-> What?
    \item<2-> Answers:
       \begin{itemize}
          \item<3-> We are here \alert{to go}.
       \end{itemize}
  \end{itemize}
\end{frame}
\end{document}
```

See also `sample.tex` for a basic presentation.

### Notes

If you use [pdf-presenter-console](https://pdfpc.github.io/), a
presenter console with multi-monitor support for PDF files, try
`\usepackage{beamernotes}` and enter your notes as in

```Tex
\bnote{my notes}
```

*after* the `frame` you want to annotate.

The contents will generate a filename.pdfpc file containing
all notes to be shown by pdfpc.


Enjoy.
--
SL (s.luz@ed.ac.uk)

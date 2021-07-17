The most basic structure of a report made with [edmaths.sty](https://github.com/Foggalong/edinburgh-math-latex/blob/master/edmaths.sty) is shown below, taken from the stylesheet's original documentation. This uses the formatting for a first year report with the appropriate title page, followed by an abstract, contents, chapters, and finally an appendix.


```latex
\documentclass[10pt]{report}

\title{The title of my first year report}
\author{My name}
\date{YYYY}

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
```

The stylesheet can be extended as needed but also comes with several inbuilt features, as showcased in the [beefier report example](https://github.com/Foggalong/edinburgh-math-latex/blob/master/example-report.tex) included. That example is a combination of the one included in the stylesheet's original documentation and the documentation for [year 5 reports](https://teaching.maths.ed.ac.uk/main/undergraduate/studies/honours/year-5/projects/reports).
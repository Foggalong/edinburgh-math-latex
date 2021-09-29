There are various solutions for writing notes to accompany LaTeX presentations made with [Beamer](https://latex-beamer.com/). In each of these use the relevant command _after_ the slide you wish to annotate.

## Beamer's `\note`

Beamer itself actually comes with a command, `\note`, which can be used for writing notes that are then included as separate 'notes' pages in the complied PDF. Exactly how these are handled is controlled through the document class arguments

```latex
\documentclass[notes]{beamer}       % print frame + notes
\documentclass[notes=only]{beamer}  % only notes
\documentclass{beamer}              % only frames
```

and then notes are added as

```latex
\note{Some wonderful note.}
```

These have the upside that you have full access to LaTeX formatting when writing your speaker notes, but the downside that they can be cumbersome to work with when presenting. Multiple complications are needed to get notes and presentations in separate PDF files.

## PDFPC's `\note`

[PDFPC](https://pdfpc.github.io/) is a presenter console with multi-monitor support for PDF files. There's an [official package](https://github.com/pdfpc/latex-pdfpc) from PDFPC for adding meta-data to presentation files which are compatible with their presenter console. doing this. Use

```latex
\usepackage[overridenote=true]{pdfpc}
```

in the document header and enter slide notes as

```latex
\note{Some wonderful note.}
```

as before. These will then be included as "comments" within the complied PDF which PDFPC displays as notes in the presenter console. These have the upside that they're smoother to work with when presenting, but the downside that the only formatting supported is `\\` for newlines.

## cebe's `\pnote`

There are two packages called pdfpc-latex-notes, one by [cebe](https://github.com/cebe/pdfpc-latex-notes) and a fork by [p4pyru5](https://github.com/p4pyru5/pdfpc-latex-notes), which can be used to generate PDFPC compatible notes in their own ways.

Both are used by adding

```latex
\usepackage{pdfpc-latex-notes}
```

to your document header and use

```latex
\pnote{Some wonderful note.}
```

to add notes. They each come with their own pros and cons (varying support for formatting, integration, etc) but served as the inspiration for [PDFPC's official solution](#pdfpcs-note).

## Usher's `\bnote`

The original version of the University of Edinburgh beamer template by [Saturnino Luz](https://www.ed.ac.uk/profile/saturnino-luz) at the Usher Institute included its own package, `beamernotes`, for generating a PDFPC compatible notes file. A modified version of that package was included with this repo up to v0.97 before being replaced with a recommendation to use [PDFPC's official solution](#pdfpcs-note).

To use it save [this code](#beamernotessty) to a file called `beamernotes.sty`, either in your LaTeX path or local to your project. Then add

```latex
\usepackage{beamernotes}
```

to your document header and use

```latex
\bnote{Some wonderful note.}
```

to write your notes. This solution had the upside that your notes were included in a separate file still automatically read by PDFPC, but the downside that all formatting was lost _including_ the ability to write newlines.

### `beamernotes.sty` 

```latex
%% Package `edmaths' v0.97
%%
%% A package for writing speaker notes to acompany LaTeX Beamer presentations. In doc.tex
%% containing a Beamer presentation, use the \bnote{} command to write any speaker notes.
%% When the file is compiled your notes on slides get converted automatically into a notes
%% file (doc.pdfpc), readable by pdf-presenter-console.

\begingroup
    \catcode`\#=12
    \gdef\slidenumberprefix{### }%
\endgroup

\typeout{Starting beamer notes.}

% Buffer to write notes into
\let\BeamerNotesBuffer\empty
% Keeps track of slide number
\newcounter{BeamerNotesCounter}


% Command for taking a note and adding it to the BeamerNotesBuffer
\newcommand{\bnote}[1]{
    \typeout{Creating note: #1}
    \stepcounter{BeamerNotesCounter}%
    \xdef\BeamerNotesBuffer{\BeamerNotesBuffer
        ^^J\slidenumberprefix \theBeamerNotesCounter ^^J#1}%
    \mode<article>{#1}
}


% Save contents of BeamerNotesBuffer to a file
\AtEndDocument{%
    % open file for writing
    \newwrite\file
    \immediate\openout\file=\jobname.pdfpc

    \immediate\write\file{
        % pdfpc header
        [file]^^J%
        \jobname.pdf^^J%
        [end_user_slide]^^J%
        \theBeamerNotesCounter^^J%
        % notes contents
        [notes]%
        \BeamerNotesBuffer
    }
    % save file
    \closeout\file
}
```
As well as the beefier example bundled in this repository, there's a simpler example usage of the beamer theme which was bundled with the original documentation.

```latex
\documentclass{beamer}
% this is the default; options green and blue are also available
\usetheme{UsherNew}

\title[Short Title]{A Long and verbose title}
\subtitle{and a sub-title}
\author{Dr Benway}
\institute{The Mental Institute}
\date{Feb 1935}

\begin{document}

\maketitle

\begin{frame}{Words of Advice for Young People}\label{sec:Advice}
    People often ask me if I have any words of \alert{advice} for young people\ldots \\[2ex] \pause
    \begin{itemize}
        \item<1-> \alert{Never} interfere in a \alert{boy-and-girl} fight
        \item<2-> Any \alert{old soul} is worth saving\\
                  \uncover<3->{at \alert{least to} a priest},
            \begin{itemize}
                \item<4-> But \alert{not} every soul is \alert{worth buying}.
            \end{itemize}
    \item<5-> \ldots
    \end{itemize}
\end{frame}

\begin{frame}{Conclusions}\label{sec:what?}
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
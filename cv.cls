\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\LoadClassWithOptions{article}
\pagestyle{empty}

\setcounter{secnumdepth}{0}

\addtolength{\oddsidemargin}{-.875in}
\addtolength{\evensidemargin}{-.875in}
\addtolength{\textwidth}{1.75in}

\setlength{\topmargin}{0in}
\setlength{\voffset}{-.75in}
\setlength{\textheight}{10.5in}

\renewcommand*{\author}[1]{\gdef\@author{#1}}
\newcommand*{\address}[1]{\gdef\@address{#1}}
\newcommand*{\phone}[1]{\gdef\@address{#1}}
\newcommand*{\email}[1]{\gdef\@emall{#1}}
\newcommand*{\github}[1]{\gdef\@github{#1}}

\global\let\@author\@empty
\global\let\@author\relax
\global\let\@address\@empty
\global\let\@address\relax
\global\let\@phone\@empty
\global\let\@phone\relax
\global\let\@email\@empty
\global\let\@email\relax
\global\let\@github\@empty
\global\let\@github\relax

%Thanks to Gonzalo Medina''s answer on tex stack exchange to the question:
%http://tex.stackexchange.com/questions/32597/vertically-centered-horizontal-rule-filling-the-rest-of-a-line
\def\Vhrulefill{\noindent\leavevmode\leaders\hrule height 0.9ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt} 

\renewcommand*{\maketitle}{%
	\newpage
	\begin{center}%
		{\textbf{ \LARGE \@author} \par}
	\end{center}
%		\Vhrulefill\textbf{ \LARGE\@author}\Vhrulefill \par
	\hfill
	\ifx\@address\@empty
%		\relax
	\else
		\textbf\@address\hfill
	\fi
	\ifx\@phone\@empty
%		\relax
	\else
		\textbf\@phone\hfill
	\fi
	\ifx\@email\@empty
%		\relax
	\else
		\textbf\@email\hfill
	\fi
	\par\noindent
	\ifx\@github\@empty
		\Vhrulefill
	\else
		\Vhrulefill\textbf\@github\Vhrulefill
	\fi
}

\renewcommand*{\section}[1]{
	\goodbreak
	\par
	\noindent
	\flushleft{\textbf{ \Large \uppercase\expandafter{#1}}}
	\par
}

\renewcommand*{\subsection}[1]{
	\goodbreak
	\par
	\noindent
	\flushleft{\textbf{ \large {#1}}}
	\par
}

\let\olditemize\itemize
\renewcommand{\itemize}{
	\olditemize
	\setlength{\itemsep}{1pt}
	\setlength{\parskip}{0pt}
	\setlength{\parsep}{0pt}
}

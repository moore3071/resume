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

\newcommand*{\address}[1]{\gdef\@address{#1}}
\newcommand*{\phone}[1]{\gdef\@address{#1}}
\newcommand*{\email}[1]{\gdef\@emall{#1}}
\newcommand*{\github}[1]{\gdef\@github{#1}}

%Thanks to Gonzalo Medina''s answer on tex stack exchange to the question:
%http://tex.stackexchange.com/questions/32597/vertically-centered-horizontal-rule-filling-the-rest-of-a-line
\def\Vhrulefill{\noindent\leavevmode\leaders\hrule height 0.9ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt} 

\renewcommand*{\maketitle}{%
	\newpage
%	\begin{center}%
%		{\textbf{ \LARGE \@author} \par}
%	\end{center}
		\Vhrulefill\textbf{ \LARGE\@author}\Vhrulefill \par
	\noindent\hrulefill
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

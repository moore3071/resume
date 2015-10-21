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

\renewcommand*{\maketitle}{%
	\newpage
	\begin{center}%
		{\textbf{ \LARGE \@author} \par}
	\end{center}
	\noindent\hrulefill
%	\noindent\makebox[\linewidth]{\rule{\paperwidth}{.4pt}}
	
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

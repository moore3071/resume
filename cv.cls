\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\LoadClassWithOptions{article}
\pagestyle{empty}

\renewcommand*\rmdefault{ptm}

\setcounter{secnumdepth}{0}

\addtolength{\oddsidemargin}{-.9in}
\addtolength{\evensidemargin}{-.9in}
\addtolength{\textwidth}{1.8in}

\setlength{\topmargin}{0in}
\setlength{\voffset}{-.75in}
\setlength{\textheight}{10.5in}

\renewcommand*{\author}[1]{\gdef\@author{#1}}
\newcommand*{\address}[1]{\gdef\@address{#1}}
\newcommand*{\phone}[1]{\gdef\@address{#1}}
\newcommand*{\email}[1]{\gdef\@email{#1}}
\newcommand*{\github}[1]{\gdef\@github{#1}}

\global\let\@author\@empty
\global\let\@address\@empty
\global\let\@phone\@empty
\global\let\@email\@empty
\global\let\@github\@empty

%Thanks to Gonzalo Medina''s answer on tex stack exchange to the question:
%http://tex.stackexchange.com/questions/32597/vertically-centered-horizontal-rule-filling-the-rest-of-a-line
\def\Vhrulefill{\noindent\leavevmode\leaders\hrule height 0.9ex depth \dimexpr0.6pt-0.5ex\hfill\kern0pt} 
\def\Vhrulefilltwo{\noindent\leavevmode\leaders\hrule height 1.1ex depth \dimexpr0.7pt-0.9ex\hfill\kern0pt} 

\renewcommand*{\maketitle}{
	\newpage
	\begin{center}
		{\textbf{ \LARGE \@author}}
	\end{center}
	\dotfill
	\ifx\@address\@empty
%		\relax
	\else
		\textbf\@address
		\dotfill
	\fi
	\ifx\@phone\@empty
%		\relax
	\else
		\textbf\@phone
		\dotfill
	\fi
	\ifx\@email\@empty
%		\relax
	\else
		\textbf{\@email}
		\dotfill
		\dotfill
	\fi
	\ifx\@github\@empty
%		\relax
	\else
		\textbf{\@github}
		\dotfill
	\fi
	\newline
}

\renewcommand*{\section}[1]{
	\goodbreak\vspace{6pt}
	\par
	\nointerlineskip
	\noindent
	\Vhrulefilltwo\textbf{ \Large \uppercase{#1}}\Vhrulefilltwo\Vhrulefilltwo\Vhrulefilltwo\Vhrulefilltwo\Vhrulefilltwo
	\\
}

\renewcommand*{\subsection}[3]{
	\vspace{3pt}
	\noindent{\textbf{ \large {#1}}}
	\newline
	\textbf{#2}\hfill\textbf{#3}
	\newline
}

\let\olditemize\itemize
\renewcommand{\itemize}{
	\olditemize
	\setlength{\itemsep}{1pt}
	\setlength{\parskip}{0pt}
	\setlength{\parsep}{0pt}
}

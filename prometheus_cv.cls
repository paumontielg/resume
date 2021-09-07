\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prometheus_cv}[]

\RequirePackage{titlesec}

\titleformat{\section}
  {\large\scshape\raggedright\addfontfeature{LetterSpace=7.0}}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
 {\normalsize\scshape\raggedright}
 {}{0em}
 {}

\newcommand{\datedsubsection}[4]{%
	\cvsubsection[#2]{#3 \hfill \small{\textlf{\scshape{#2}}}}%
	\begin{minipage}{5cm}
		\vspace*{-.7ex}\hspace*{-3cm}\footnotesize #1
	\end{minipage}
	\raggedright

	\begin{small}
		#4
	\end{small}
}

\newcommand{\datedsubsectionnarrow}[4]{%
	\cvsubsectionnarrow[#2]{#3 \hfill \small{\textlf{\scshape{#2}}}}%
	\begin{minipage}{5cm}
		\vspace*{-.7ex}\hspace*{-3cm}\footnotesize #1
	\end{minipage}
	\raggedright

	\begin{small}
		#4
	\end{small}
}

\newcounter{cvsubsection}
\titleclass{\cvsubsection}{straight}[\part]
\titleformat{\cvsubsection}
	{\raggedright}
	{}{0em}
	{}
\titlespacing*{\cvsubsection}{0pt}{3.5ex plus 1ex minus .2ex}{-2.5ex}

\newcounter{cvsubsectionnarrow}
\titleclass{\cvsubsectionnarrow}{straight}[\part]
\titleformat{\cvsubsectionnarrow}
	{\raggedright}
	{}{0em}
	{}
\titlespacing*{\cvsubsectionnarrow}{0pt}{0pt}{-2.5ex}

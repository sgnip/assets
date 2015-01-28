\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apuntes}[2015/01/20 Template for SGNIP documents]


\RequirePackage{pdfpages}
\RequirePackage{datetime}

\LoadClass[titlepage]{custombase}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{custombase}}

\ProcessOptions\relax

\fancyhf{}
\PrerenderUnicode{ÁáÉéÍíÓóÚúÑñ} % Para que salgan las tildes y demás mierdas en el título.

\fancypagestyle{plain}{%
	\lhead{\small \itshape \thetitle\, -\, \thedate\, -\, UAM}
	\rhead{\small \theauthor}
	\cfoot{\thepage\ de \pageref{LastPage}}
	\rfoot{\compdate}
}


\setlength{\parskip}{2mm}
\setlength{\headheight}{15pt}


\apptocmd{\printindex}{\enableindexbuilddate}{}{}
\apptocmd{\maketitle}{\printbuilddate}{}{}

\newcommand{\placeholder}[1]{\begin{framed}\textit{\textbf{A rellenar:} #1}\end{framed}}

\RequirePackage{caption}

\captionsetup{style=base}
\captionsetup[figure]{labelfont=bf,textfont=it}

\makeindex

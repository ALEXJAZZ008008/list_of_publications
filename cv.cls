\ProvidesClass{cv}

% Permit Computer Modern at non-standard font sizes.
\RequirePackage{fix-cm}

\LoadClass[a4paper, oneside, 10pt]{article}

% Document font sizes
\renewcommand{\LARGE}{\@setfontsize\LARGE{17pt}{20.4pt}}
\renewcommand{\Large}{\@setfontsize\Large{13pt}{15.6pt}}
\renewcommand{\large}{\@setfontsize\large{11pt}{13.2pt}}
\newcommand{\subheadingsize}{\@setfontsize\subheadingsize{10pt}{12pt}}
\renewcommand{\normalsize}{\@setfontsize\normalsize{10pt}{12pt}}
\renewcommand{\small}{\@setfontsize\small{9.5pt}{11.4pt}}
\renewcommand{\footnotesize}{\@setfontsize\footnotesize{9pt}{10.8pt}}

% Date and recipient details
\newcommand{\detailsize}{\@setfontsize\detailsize{9.5pt}{11.4pt}}

\usepackage{etoolbox}
\usepackage{ifthen}
\usepackage{graphicx}
\usepackage{float}

\pagestyle{empty}

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \addressSep {$\diamond$}

\newcommand{\@addresses}{}
\newcommand{\address}[1]{%
    \gappto{\@addresses}{#1\\}%
}

\let\ori@document=\document

\AtBeginDocument{
    \normalsize
    \ifx\@name\@empty
    \else
        \noindent
        \begin{minipage}{\textwidth}
            \raggedright
            {\LARGE\bfseries\MakeUppercase{\@name}}\par
            \nameskip
            {\small\@addresses}
            \par
        \end{minipage}
        \par
    \fi
}

\newenvironment{rSection}[1]
{
    \sectionskip
    {\large\bfseries\MakeUppercase{#1}}
    \sectionlineskip
    \hrule
  
    \begin{list}{}
    {
        \setlength{\leftmargin}{1.5em}
    }
    
    \item[]
}
{
    \end{list}
}

\newenvironment{rSubsection}[4]
{
    {\subheadingsize\bfseries #1} \hfill {\detailsize #2}
    \ifthenelse{\equal{#3}{}}{}
    {
        \\
        {\emph{#3}} \hfill {\detailsize\emph{#4}}
    }
    
    \smallskip
    \begin{list}{}{\leftmargin=0em}
    \itemsep -0.5em \vspace{-0.5em}
}
{
    \end{list}
    \vspace{0.5em}
}

\def\namesize{\huge}
\def\addressskip{\smallskip}
\def\sectionlineskip{\medskip}
\def\nameskip{\medskip}
\def\sectionskip{\medskip}

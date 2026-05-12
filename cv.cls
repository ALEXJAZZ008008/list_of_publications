\ProvidesClass{cv}

\LoadClass[a4paper, oneside, 11pt]{article}

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
    % \noindent
    % \begin{minipage}[t]{0.25\textwidth}
    %     \raggedleft
    %     \ifx\@photo\empty\else
    %         \begin{figure}[H]
    %             \vspace{-1.5cm}
    %             \includegraphics[width=\@photowidth]{\@photo}
    %         \end{figure}
    %     \fi
    % \end{minipage}%
    % \hfill
    % \begin{minipage}[t]{0.75\textwidth}
    %     \vspace{-0.5cm}
    %     {\MakeUppercase{\LARGE\bfseries \@name}}\par\nameskip
    %     \vspace{1.0cm}
    %     \begingroup
    %        \def\\{\addressSep\ }
    %         \raggedright
    %         \@addresses
    %     \endgroup
    % \end{minipage}
    % \par
}

\newenvironment{rSection}[1]
{
    \sectionskip
    \MakeUppercase{\bf #1}
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
    {\bf #1} \hfill {#2}
    \ifthenelse{\equal{#3}{}}{}
    {
        \\
        {\em #3} \hfill {\em #4}
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

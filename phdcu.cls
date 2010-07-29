%  phdcu.csl

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phdcu}[2006/10/03 Ph.D. in CU - Dissertation class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[letterpaper,11pt]{report}

%  Left margin:   1.5''.
\oddsidemargin 0.5in
%  Right margin:  1.0''.
\textwidth 6.0in
%  Top margin:    1.0''.
\topmargin -0.5in
%  Bottom margin: 1.0''.
\textheight 8.6in

%  Spacing control.
\RequirePackage{setspace}
\singlespacing

% order multiple cititations within brackets
\usepackage{cite}

%For the figures
\usepackage{epsfig}

\usepackage{rotating}
%\usepackage[centerlast,small,sc]{caption}

%from netvm.tex
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{multirow}
\usepackage{verbatim}
\usepackage{url}

%code listings
\usepackage{listings}
%  Hyperlinks. (must be last package)

%\RequirePackage[colorlinks=false,pdftex]{hyperref}

\newcommand{\@department}[1]{}
\newcommand{\department}[1]{\gdef\@department{#1}}

\newcommand{\@advisor}[1]{}
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}

\newcommand{\@major}[1]{}
\newcommand{\major}[1]{\gdef\@major{#1}}

\newcommand{\@dean}[1]{}
\newcommand{\dean}[1]{\gdef\@dean{#1}}

\newcommand{\@defensemonth}[1]{}
\newcommand{\defensemonth}[1]{\gdef\@defensemonth{#1}}

\newcommand{\@defenseyear}[1]{}
\newcommand{\defenseyear}[1]{\gdef\@defenseyear{#1}}

%  Variable for first commitee member.
\newcommand{\@committeeA}[1]{}
\newcommand{\committeeA}[1]{\gdef\@committeeA{#1}}
%  Variable for second commitee member.
\newcommand{\@committeeB}[1]{}
\newcommand{\committeeB}[1]{\gdef\@committeeB{#1}}
%  Variable for third commitee member.
\newcommand{\@committeeC}[1]{}
\newcommand{\committeeC}[1]{\gdef\@committeeC{#1}}
%  Variable for fourth commitee member.
\newcommand{\@committeeD}[1]{}
\newcommand{\committeeD}[1]{\gdef\@committeeD{#1}}
%  Add more committee members here, if necessary.

\InputIfFileExists{data.tex}{}{}

\renewcommand{\maketitle}{

  \pagenumbering{roman}
  \pagestyle{empty}

  \begin{center}
    \vspace*{10mm}
    CLARKSON UNIVERSITY\\
    \vspace{25mm}
    \Large{\textbf{\@title}}\\
    \vspace{7mm}
    \normalsize{A Dissertation by}\\
    \vspace{4mm}
    \large{\textbf{\@author}}\\
    \vspace{9mm}
    \normalsize{\@department}\\
    \vspace{15mm}
    Submitted in partial fulfillment of the requirements\\
    \vspace{2mm}
    for the degree of\\
    \vspace{2mm}
    \textbf{Doctor of Philosophy}\\
    \vspace{2mm}
    \textbf{\@major}\\
    \vspace{6mm}
    \@defensemonth{} \@defenseyear\\
    \vspace{6mm}
    \copyright\@author{} \@defenseyear\\
    \vspace{12mm}
    Accepted by the Graduate School\\
    \vspace{10mm}
    
    \begin{tabular}{p{60mm} r}
      \hline\\
      Date & DEAN\\
    \end{tabular}
  \end{center}
  
  \newpage
  
  \pagestyle{plain}

  \doublespace

  The undersigned have examined the dissertation entitled
  \textbf{\@title} presented by \@author{}, a candidate for the degree
  of Doctor of Philosphy, \@major{} and hereby certify that it is
  worthy of acceptance.\\
  \vspace{25mm}

  \singlespace

  \begin{tabular}{p{50mm}}
    \hline\\
    Date\\
  \end{tabular}
  
  \begin{flushright}
    EXAMINING COMMITTEE\\
    \vspace{15mm}
    \begin{tabular}{p{30mm} r}

      %  First committee member.
      \hline\\
      & \@committeeA\\
      \vspace{10mm}\\
      %  Second committee member.
      \hline\\
      & \@committeeB\\
      \vspace{10mm}\\
      %  Third committee member.
      \hline\\
      & \@committeeC\\
      \vspace{10mm}\\
      %  Fourth committee member.
      \hline\\
      & \@committeeD\\
      \vspace{10mm}\\
      %  Add more committee members here, if necessary.

      %  Advisor is the last committee member.
      \hline\\
      ADVISOR & \@advisor\\

    \end{tabular}
  \end{flushright}

  \newpage

  \doublespace

}

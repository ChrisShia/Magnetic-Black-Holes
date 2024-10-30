%% tstextbook.cls
%% Copyright 2016 Typesetters.se
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This is a free LaTeX text book template from Typesetters.se.
% See tstextbook.tex for an example of how to use this class.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tstextbook}[2017/02/19 Free LaTeX text book template from Typesetters.se]
\LoadClass[12pt,onecolumn,titlepage,twoside,openany]{book}

% Section styling
%--------------------------------------------------------------------------
\RequirePackage{sectsty}
\sectionfont{\sf\color{tssteelblue}\sectionrule{0ex}{0pt}{-1ex}{1pt}}
\chapterfont{\raggedleft}
%--------------------------------------------------------------------------


% Comments
%--------------------------------------------------------------------------
\usepackage{comment}

% Creative Common License
%--------------------------------------------------------------------------

% Language
%--------------------------------------------------------------------------
%\RequirePackage[swedish]{babel}
\usepackage{polyglossia}
\usepackage{csquotes}%When using babel or polyglossia with biblatex, loading csquotes is recommended to ensure that quoted texts are typeset according to the rules of your main language.
\setmainlanguage{greek}
\setotherlanguage{english}

% Geometry
%--------------------------------------------------------------------------
\RequirePackage[top=2.5cm,bottom=2.5cm,left=3cm,right=3cm,
                marginparwidth=1.1cm,marginparsep=2mm]{geometry}
                
% Chapter Epigraph
%--------------------------------------------------------------------------
\usepackage{epigraph}

% Fonts
%--------------------------------------------------------------------------
\RequirePackage{kpfonts}

\usepackage{fontspec} 
\setmainfont[Kerning=On,Mapping=tex-text]{Linux Libertine O}
\setsansfont{Trebuchet MS}%Trebuchet MS
\setmonofont{Inconsolata}%Inconsolata
\newfontfamily\greekfont[Script=Greek]{Linux Libertine O}
\newfontfamily\greekfontsf[Script=Greek]{Linux Libertine O}%Linux Libertine O

\usepackage{amsfonts}

% Colors
%--------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{tssteelblue}{RGB}{70,130,180}
\definecolor{tsorange}{RGB}{255,138,88}
\definecolor{tsblue}{RGB}{23,74,117}
\definecolor{tsforestgreen}{RGB}{21,122,81}
\definecolor{tsyellow}{RGB}{255,185,88}
\definecolor{tsgrey}{RGB}{200,200,200}

% Graphics
%--------------------------------------------------------------------------
\usepackage{caption}
\usepackage{subcaption}
\RequirePackage{graphicx}
\graphicspath{{images/}}
\RequirePackage{tikz}

\RequirePackage{wrapfig} 

% Header and footer styling
%--------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\setlength{\headheight}{15.0pt}
\fancyhf{}
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[RE]{\it\sf\nouppercase{\rightmark}}
\fancyhead[LO]{\it\sf\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}


% code styling
%--------------------------------------------------------------------------
\usepackage{listings}
\lstloadlanguages{Mathematica}

% algoritms styling
%--------------------------------------------------------------------------
%\usepackage[german,onelanguage]{algorithm2e}

% Chapter styling
%--------------------------------------------------------------------------
\makeatletter

% Numbered chapters (with minitoc)
\definecolor{gray75}{gray}{0.75}
\newcommand{\hsp}{\hspace{60pt}}
\usepackage{blindtext, array, color}
    \definecolor{darkgray}{rgb}{0.62, 0.62, 0.70}
\renewcommand{\@makechapterhead}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    \node at (current page.north west)
  {
    \begin{tikzpicture}[remember picture,overlay]
      % Background image
      %\node[anchor=north west,inner sep=0pt] at (0,0)
      %     {\includegraphics[width=\paperwidth]{background}};
      % Chapter heading
      \draw[anchor=west, inner sep=0pt] (1.5cm,-2cm) node
           [black,
            ultra thick,
            %fill=tsorange!10,
            fill opacity=.6,
            inner sep=10pt]
           (0,0)
           {\parbox[t][1.6cm][t]{\paperwidth}{\huge\bfseries\sffamily\flushleft\textcolor{darkgray}{\thechapter \hspace{3pt} |}\hsp  #1}};
      % Chapter contents
      %\draw[anchor=west,inner sep=0pt] (8.8cm,-7cm) node
        %   [tssteelblue,
        %    ultra thick,
        %    fill=white,
        %    fill opacity=.8,
        %    draw=tssteelblue,
        %    draw opacity=1,
        %    line width=1.5pt,
        %    rounded corners,
        %    inner sep=0pt]
        %   (0,0)
        %   {\hspace{1cm}\parbox[t][7.1cm][t]{11cm}
        %   {\vspace{-1cm}\huge\bfseries\sffamily\flushleft
            %\textcolor{black}{\sffamily\minitoc}}};
    \end{tikzpicture}
  };
\end{tikzpicture}
%\vspace{7.5cm}
}

% Unnumbered chapters (without minitoc)
\renewcommand{\@makeschapterhead}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    \node at (current page.north west)
  {
    \begin{tikzpicture}[remember picture,overlay]
      % Background image
      %\node[anchor=north west,inner sep=0pt] at (0,0)
      %     {\includegraphics[width=\paperwidth]{background}};
      % Chapter heading
      \draw[anchor=west,inner sep=0pt] (1.5cm,-1.5cm) node
           [black,
            ultra thick,
            %fill=tsorange!10,
            fill opacity=.6,
            inner sep=10pt]
           (0,0)
           {\parbox[t][1.6cm][t]{\paperwidth}
           {\huge\bfseries\sffamily\flushleft #1}};
    \end{tikzpicture}
  };
\end{tikzpicture}
\vspace{3cm}% me: adjusts the spacing between the heading of unumbered chapters and body, i.e. Contents, Bibliography
}

% Minitoc styling
%--------------------------------------------------------------------------
\RequirePackage{minitoc}
\setcounter{minitocdepth}{2}
\dominitoc[n]
\nomtcrule
\nomtcpagenumbers
\renewcommand{\mtifont}{\large\sffamily}
\renewcommand{\mtcfont}{\small\sffamily}
\renewcommand{\mtcSfont}{\small\sffamily}
\renewcommand{\mtcSSfont}{\small\sffamily}
\renewcommand{\mtcSSSfont}{\small\sffamily}

% Table of contents styling
%--------------------------------------------------------------------------
\RequirePackage{titletoc}
\setcounter{tocdepth}{2}

\titlecontents{chapter}[0cm]
{\addvspace{14pt}\large\sffamily\bfseries}
{\color{tssteelblue}\contentslabel[\Large\thecontentslabel]{1.25cm}}{}
{\color{tssteelblue}\normalsize\sffamily\bfseries
 \;\titlerule*[.5pc]{.}\;\thecontentspage}

\titlecontents{section}[0cm]
{\addvspace{6pt}\sffamily\bfseries}
{\contentslabel[\thecontentslabel]{1.25cm}}{}
{\sffamily\hfill\color{black}\thecontentspage}[]

% Front matter
%--------------------------------------------------------------------------
\newcommand{\tsbook}[5]{

\pagestyle{empty}

\def\@tstitle{#1}
\def\@tsauthor{#2}
\def\@tsdep{#3}
\def\@tsproject{#4}
\def\@tsprof{#5}
%\def\@tscoverdesign{#3}
%\def\@tsyear{#3}
%\def\@tsartno{#5}
%\def\@tsisbn{#6}
%\def\@tsedition{#7}
%\def\@tspublished{#8}
%\def\@tsprinted{#9}

% Title page
%\BgThispage

\begin{figure} 
\centering  
\includegraphics[scale=1.5]{images/UCY.jpg}
\end{figure}

\begin{center}
  \null
  \smallskip

  \sffamily

  \Large
  \textsc{\@tsdep}
  
  \LARGE
  \textsc{\@tsproject} \\[1em]
  
  \Huge
  \textsc{\@tstitle}

  \bigskip
  \smallskip
  
  \Large
  \textsc{\@tsauthor}
  
  \Large
  Επιβλέπων Καθηγητής: \textsc{\@tsprof}
  
\end{center}

\pagebreak

% Copyright page
%%\null
%%\vfill
%\begin{flushleft}
%%   Copyright \copyright \ \@tsyear \ 
%%\includegraphics{PD88x31}

%%Στο μέτρο του δυνατού, σύμφωνα με το νόμο, ο Μανόλης Βάβαλης έχει παραιτηθεί από όλα τα δικαιώματα πνευματικής ιδιοκτησίας και λοιπά ενδεχόμενα δικαιώματα στις παρούσες διdακτικές σημεώσεις με τίτλο "ΕΙΣΑΓΩΓΗ ΣΤΗΝ ΓΡΑΜΜΙΚΗ ΑΛΓΕΒΡΑ".
%% \\
%%  \vspace{5mm}
%%   \textbf{Copying prohibited} \\
%%   \vspace{5mm}
%   All rights reserved. No part of this publication may be reproduced
%   or transmitted in any form or by any means, electronic or
%   mechanical, including photocopying and recording, or by any
%   information storage or retrieval system, without the prior written
%   permission of the publisher. \\
%   \vspace{5mm}
%%  Art. No \@tsartno \\
%%  ISBN \@tsisbn \\
%%  Edition \@tsedition \\
%   \vspace{5mm}
%   Cover design by \@tscoverdesign \\
%   \vspace{5mm}
%   Published by \@tspublished \\
%   Printed in \@tsprinted
%%\end{flushleft}

% Table of contents
\tableofcontents

\cleardoublepage
\pagestyle{fancy}
\thispagestyle{empty}
}

% Boxes for theorems
%--------------------------------------------------------------------------
\newenvironment{boxtheorem}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=black!5,colframe=tsorange]}
{\end{tcolorbox}}

\newenvironment{boxdefinition}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=yellow!10!white,boxrule=0pt,frame hidden,
 borderline west={1.5mm}{-2mm}{tsforestgreen}]}
{\end{tcolorbox}}

\newenvironment{boxexercise}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsyellow!20,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxproblem}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsorange!25,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxprogramming}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsblue!10,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxmathematica}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsblue!10,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxexample}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsgrey!20,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxnote}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=yellow!10!white,boxrule=0pt,frame hidden,
 borderline west={1.5mm}{-2mm}{tsforestgreen}]}
{\end{tcolorbox}}

% Styling of theorems
%--------------------------------------------------------------------------
\RequirePackage{amsthm}

\newtheoremstyle{styletheorem}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{tsorange}}{\;}{0.25em}
{\small\sffamily\color{tsorange}\thmname{#1 #3}
 %\thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{tsorange} (#3)}
 }

\newtheoremstyle{styledefinition}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{tsforestgreen}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\newtheoremstyle{stylenote}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{tsforestgreen}\thmname{#1 #3}
 %\nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 %\thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}
}

\newtheoremstyle{styleexercise}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{black}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}
 
 \newtheoremstyle{stylemathematica}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\\ \\}{0.25em}
{\small\sffamily\color{black}\thmname{#1  #2 :  #3}
 %\nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 %\thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}
}

\theoremstyle{styledefinition}
\newtheorem{envdefinition}{Ορισμός}[chapter]
\theoremstyle{stylenote}
\newtheorem{envnote}{Σημείωση}
\theoremstyle{styletheorem}
\newtheorem{envtheorem}{Θεώρημα}
\newtheorem{envlemma}{Λήμμα}[chapter]
\theoremstyle{styleexercise}
\newtheorem{envexercise}{Άσκηση}[chapter]
\newtheorem{envproblem}{Πρόβλημα}[chapter]
\newtheorem{envprogramming}{Υπολογιστικά Προβλήματα}[chapter]
\newtheorem{envexample}{Παράδειγμα}[chapter]
\theoremstyle{stylemathematica}
\newtheorem{envmathematica}{Κώδικας Mathematica}

% Environments for theorems
%--------------------------------------------------------------------------
\newenvironment{definition}
               {\begin{boxdefinition}\begin{envdefinition}}
               {\end{envdefinition}\end{boxdefinition}}

\newenvironment{note}
               {\begin{boxnote}\begin{envnote}}
               {\end{envnote}\end{boxnote}}

\newenvironment{theorem}
               {\begin{boxtheorem}\begin{envtheorem}}
               {\end{envtheorem}\end{boxtheorem}}

\newenvironment{corollary}
               {\begin{boxtheorem}\begin{envtheorem}}
               {\end{envtheorem}\end{boxtheorem}}

\newenvironment{lemma}
               {\begin{boxtheorem}\begin{envlemma}}
               {\end{envlemma}\end{boxtheorem}}

\newenvironment{exercise}
               {\begin{boxexercise}\begin{envexercise}}
               {\end{envexercise}\end{boxexercise}}

\newenvironment{problem}
               {\begin{boxproblem}\begin{envproblem}}
               {\end{envproblem}\end{boxproblem}}

\newenvironment{programming}
               {\begin{boxprogramming}\begin{envprogramming}}
               {\end{envprogramming}\end{boxprogramming}}
               
\newenvironment{mathematica}
                {\begin{boxmathematica}\begin{envmathematica}}
               {\end{envmathematica}\end{boxmathematica}}
\newenvironment{example}
               {\begin{boxexample}\begin{envexample}}
               {\end{envexample}\end{boxexample}}

% Other environments
%--------------------------------------------------------------------------
\newenvironment{summary}
{\hspace{10pt}\par\small\it
 \begin{list}{}{\leftmargin=35pt\rightmargin=25pt}
 \item\ignorespaces\advance\baselineskip -1pt}
{\end{list}\vspace{-0.5cm}}

\newenvironment{remark}
{\vspace{0.5cm}\noindent\it
 \marginpar{\vspace{-3mm}\includegraphics[width=1.0cm]{idea}}}
{\vspace{0.5cm}}

\newenvironment{walpha}
{\marginnote{\includegraphics[width=1.0cm]{wolframalpha}}}

% Bibliography - commented out by mav it does not work on overleaf
%--------------------------------------------------------------------------
%\RequirePackage[backend=biber]{biblatex}
% \addbibresource{bibliography.bib}
\usepackage[
    backend=biber,
    style=numeric
  ]{biblatex}
\addbibresource{bibliography.bib}
%\newfontfamily\greekfont[Script=Greek]{Linux Libertine O}
%\newfontfamily{\greekfont}[Scale=MatchLowercase]{CMU Serif}
% when Greek is found, change to \greekfont 
%\setTransitionsForGreek{\begingroup\greekfont}{\endgroup}

% Index
%--------------------------------------------------------------------------
\RequirePackage{makeidx}
\makeindex

% Packages for mathematics and algorithms
%--------------------------------------------------------------------------
%\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{xfrac}
\RequirePackage{mathtools}
\RequirePackage{wasysym}
\RequirePackage{siunitx}
\newcommand\bmmax{2}
\RequirePackage{bm}
\usepackage{amsmath} % I added the amssymb package
\usepackage{amssymb}
% Other useful packages
%--------------------------------------------------------------------------
\RequirePackage{blindtext}
\RequirePackage[most]{tcolorbox}
\RequirePackage{booktabs}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{marginnote}
\usepackage{slashed} %added by me - Dirac slash notation
%\usepackage{multirow} %added by me - for particle table chapter 6
%--------------------------------------------------------------------------
\setlength\parindent{0pt}
\newcommand{\subscr}[1]{_{\text{\scalebox{0.9}{$#1$}}}}
\newcommand{\superscr}[1]{^{\text{\scalebox{0.9}{$#1$}}}}

%\newcommand{\pvec}[1]{\vec{#1}^{\text{\scalebox{1.2}{,}}}}%primed vector
\newcommand{\pvec}[1]{\vec{#1}\mkern2mu\vphantom{#1}}%primed vector
\usepackage{cancel}

\usepackage{xparse}%define commands with multiple optional parameters
\NewDocumentCommand\vecfun{O{}O{}mm}
{\vec{#3}\subscr{#1}\superscr{#2}\text{\scalebox{0.8}{$\left(#4\right)$}}}
\NewDocumentCommand\scafun{O{}O{}mm}{#3\subscr{#1}\superscr{#2}\text{\scalebox{0.8}{$\left(#4\right)$}}}

\newcommand{\y}{\text{y}}
\newcommand{\de}{\text{δ}}
\renewcommand{\epsilon}{\text{ε}}

%tensor commands
%--------------------------------------------------------------------------
\newcommand{\con}[3]{\Gamma\superscr{#1}\subscr{\;\;#2#3}}
\NewDocumentCommand \R {o m o m}{
    \IfNoValueTF{#1}
        {R\subscr{#2#4}}
        {R\superscr{#1}\subscr{\;\;#2#3#4}}
}
\NewDocumentCommand \g { o m m }{\IfNoValueTF{#1}{ g\subscr{#2#3}}{ g\superscr{#2#3} }}
\NewDocumentCommand \mink { o m m }{\IfNoValueTF{#1}{ \text{η}\subscr{#2#3}}{ \text{η}\superscr{#2#3} }}
%\NewDocumentCommand \tensor {>{\SplitList{;}}m}{ T \ProcessList{#1}{\subscr}}
%\NewDocumentCommand \tensor {>{\SplitList{;}}m}{ \}
\usepackage{tensor}
\DeclareDocumentCommand \L {o m m}{
    \IfNoValueTF{#1}
        {\frac{\partial \y\indices{^#2}}{\partial x\indices{^#3}}}
        {\frac{\partial x\indices{^#2}}{\partial \y\indices{^#3}}}
}

%differential commands
%--------------------------------------------------------------------------
\newcommand{\pd}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\spd}[3]{\frac{\partial\superscr{2} #1}{\partial #2 \partial #3}}
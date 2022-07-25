% QU-HANDOUT: Handout/note class for the Queen's courses
% Copyright (c) 2013-2022 Joshua A. Marshall
% Originally created by Joshua A. Marshall on 11 July 2013

\LoadClass[12pt,letterpaper,fleqn,oneside]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qu-handout}[2021/10/02 QU-HANDOUT class by Joshua A. Marshall]

% Set up page geometry
\RequirePackage[letterpaper,top=1in,left=0.75in,right=0.75in,bottom=1.25in]{geometry}

% Set up page numbers and headers
\RequirePackage{fancyhdr,lastpage}
\setlength{\headheight}{24.75447pt}

% Set up fonts as you like them
% \RequirePackage{cmbright}
% \RequirePackage[OT1]{fontenc}

% Queen's official is Open Sans
\RequirePackage[default,scale=0.87]{opensans}
\RequirePackage[varqu,varl]{zi4}
\RequirePackage[cmintegrals]{newtxsf}

% Some math packages that give you more symbols
\RequirePackage{amssymb,amsfonts,amsmath,amscd,bm}

% Set some course information variables
\newcommand{\institution}[1]{}
\newcommand{\coursetitle}[1]{}
\newcommand{\term}[1]{}

% Set up the section fonts
\RequirePackage{sectsty}

% Set the caption labeling font
\RequirePackage{caption}
\renewcommand{\captionlabelfont}{\bfseries}

% Load the graphics package for images
\RequirePackage{graphicx}

% For getting the current time
\RequirePackage[useregional]{datetime2}

% Queen's official colors
\RequirePackage[pdftex]{xcolor}
\definecolor{qblue}{RGB}{0,36,82}
\definecolor{qred}{RGB}{185,14,49}
\definecolor{qgold}{RGB}{250,189,15}
\definecolor{qgrey}{RGB}{230,231,232}
\definecolor{qgreen}{RGB}{119,146,33}
\definecolor{qbrown}{RGB}{135,97,64}
\definecolor{qpurple}{RGB}{97,79,135}

% For the framebox
\RequirePackage{framed}
% Gray
\definecolor{shadecolor}{gray}{0.95}
% Blue
\newenvironment{bshaded}
    {\colorlet{shadecolor}{qblue!10}\begin{shaded}}
    {\end{shaded}}
% Red
\newenvironment{rshaded}
    {\colorlet{shadecolor}{qred!10}\begin{shaded}}
    {\end{shaded}}
% Yellow
\newenvironment{yshaded}
    {\colorlet{shadecolor}{qgold!10}\begin{shaded}}
    {\end{shaded}}
% Orange
\newenvironment{gshaded}
    {\colorlet{shadecolor}{qgreen!10}\begin{shaded}}
    {\end{shaded}}
% Purple
\newenvironment{pshaded}
    {\colorlet{shadecolor}{qpurple!10}\begin{shaded}}
    {\end{shaded}}

% Define the basic page style for multipage documents
\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyfoot[C]{}%
    \fancyhead[R]{\bf\footnotesize Page~\thepage~of~\pageref{LastPage}}%
    \fancyhead[L]{\bf\footnotesize \@title}%
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}
    
% Define the basic page style for single page documents
\fancypagestyle{title}{%
    \fancyhf{}%
    \fancyfoot[C]{}%
    \fancyhead[R]{\bf\footnotesize \term \\ \bf\small Page~\thepage~of~\pageref{LastPage}}%
    \fancyhead[L]{\bf\footnotesize \coursetitle \\ \institution} %
    \fancyfoot[L]{\bf\footnotesize Copyright \textcopyright\ \the\year\ by \@author \\ Version timestamp \DTMnow}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}}

% Set the PDF document settings
\RequirePackage{titling}
\RequirePackage[colorlinks]{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=red,
    citecolor=green,
    filecolor=magenta,
    urlcolor=cyan
}

% For nice URL hyperlinks
\RequirePackage{url}

% For underlining stuff in a nice way
\RequirePackage[normalem]{ulem}

% For better looking tables
\RequirePackage{booktabs}

% Customize the abstract
\newenvironment{qabstract}
{\subsubsection*{Abstract}\begin{small}}
{\end{small}}

% For code (usually Python or C/C++)
\RequirePackage[]{minted}
\setminted[python]{linenos=true}
\setminted[c]{linenos=true}
\renewcommand\theFancyVerbLine{\sffamily\footnotesize\arabic{FancyVerbLine}}
\BeforeBeginEnvironment{minted}{\begin{snugshade}}
\AfterEndEnvironment{minted}{\end{snugshade}}
\newcommand*{\mintpy}[1]{\mintinline[bgcolor=shadecolor]{python}{#1}}
\newcommand*{\mintc}[1]{\mintinline[bgcolor=shadecolor]{c}{#1}}

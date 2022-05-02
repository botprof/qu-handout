% QU-HANDOUT: Handout/note class for the Queen's courses
% Copyright (c) 2013-2021 Joshua A. Marshall
% Originally created by Joshua A. Marshall on 11 July 2013

\LoadClass[12pt,letterpaper,fleqn,oneside]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qu-handout}[2021/10/02 QU-HANDOUT class by Joshua A. Marshall]

% Set up page geometry
\RequirePackage[letterpaper,top=1in,left=0.75in,right=0.75in,bottom=1.25in]{geometry}

% Set up page numbers and headers
\RequirePackage{fancyhdr,lastpage}

% Set up fonts as you like them
\RequirePackage{cmbright}

% Queen's official is Open Sans
% \RequirePackage[default,scale=0.95]{opensans}

% Use T1 encoding
\RequirePackage[T1]{fontenc}

% Set up some nice text spacing, for report readability
\newcommand{\spread}{1.05}
\linespread{\spread}

% Set some course information variables
\newcommand{\institution}[1]{}
\newcommand{\coursetitle}[1]{}
\newcommand{\term}[1]{}

% Set up the section fonts
\RequirePackage{sectsty}
% \allsectionsfont{}

% Set the caption labeling font
\RequirePackage{caption}
\renewcommand{\captionlabelfont}{\bfseries}

% Load the graphics package for images
\RequirePackage{graphicx}

% For getting the current time
\RequirePackage[useregional]{datetime2}

% Queen's official colors
\RequirePackage{color}
\definecolor{qred}{RGB}{157,25,57} % Primary color
\definecolor{qblue}{RGB}{17,51,93} % Primary color
\definecolor{qgold}{RGB}{238,189,49} % Secondary color
\definecolor{qcgray}{RGB}{104,102,99} % Goes with qred
\definecolor{qwgray}{RGB}{140,127,112} % Goes with qblue

% For the framebox
\RequirePackage{framed}
% Gray
\definecolor{shadecolor}{gray}{0.95}
% Blue
\newenvironment{bshaded}
    {\definecolor{shadecolor}{RGB}{229,233,238}\begin{shaded}}
    {\end{shaded}}
% Red
\newenvironment{rshaded}
    {\definecolor{shadecolor}{RGB}{246,232,234}\begin{shaded}}
    {\end{shaded}}
% Yellow
\newenvironment{yshaded}
    {\definecolor{shadecolor}{RGB}{253,246,233}\begin{shaded}}
    {\end{shaded}}
% Orange
\newenvironment{oshaded}
    {\definecolor{shadecolor}{RGB}{245,225,214}\begin{shaded}}
    {\end{shaded}}
% Purple
\newenvironment{pshaded}
    {\definecolor{shadecolor}{RGB}{221,213,219}\begin{shaded}}
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

% Set up hyperlinks
\RequirePackage{url}
\url@rmstyle

% Customize the abstract
\newenvironment{qabstract}
{\subsubsection*{Abstract}\begin{small}}
{\end{small}}

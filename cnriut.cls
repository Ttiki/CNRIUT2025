\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cnriut}[2017/11/30 v1 style class for cnriut proceedings]
% From old iaf proceedings style class.
% From jfpc proceedings style class.

\LoadClass[twoside,twocolumn,a4paper]{article}
\RequirePackage{mathptmx} % supersedes both obsolete times and previous mathptmx packages
\RequirePackage{ae,aeguill}
\RequirePackage{txfonts}
\RequirePackage[english,french]{babel}
\RequirePackage[fixlanguage]{babelbib}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{calc}

\setlength{\topmargin}{0mm}       
\setlength{\headheight}{0mm}
\setlength{\headsep}{10mm}
\setlength{\textwidth}{170mm}
\setlength{\textheight}{230mm}
\setlength{\oddsidemargin}{1.5mm}
\setlength{\evensidemargin}{-9.5mm}

\pagestyle{empty}

\makeatletter

\def\@lannee{\the\year}
\newcommand{\annee}[1]{\def\@lannee{#1}}

\def\@lemois{quel mois}
\newcommand{\mois}[1]{\def\@lemois{#1}}

\def\@lesjours{jours de d\'ebut et de fin}
\newcommand{\jours}[1]{\def\@lesjours{#1}}

\def\@lelieu{le lieu}
\newcommand{\lieu}[1]{\def\@lelieu{#1}}

\def\@letitre{d{\'e}finir le titre}
\newcommand{\titre}[1]{\def\@letitre{#1}}
\renewcommand{\title}[1]{\titre{#1}}

\def\@lesauteurs{donner la liste des auteurs}
\newcommand{\auteurs}[1]{\def\@lesauteurs{#1}}
\renewcommand{\author}[1]{\auteurs{#1}}

\def\@lesaffiliations{pr{\'e}ciser les affiliations}
\newcommand{\affiliations}[1]{\def\@lesaffiliations{#1}}

\def\@lescourriels{pr{\'e}ciser les adresses de courriels}
\newcommand{\courriels}[1]{\def\@lescourriels{#1}}

\date{}
\renewcommand\date[1]{}

\newcommand{\cw}[1]{\parbox[t]{152mm}{\emph{#1}}}

\setlength\columnsep{15\p@}
\setlength\columnseprule{0\p@}

\renewcommand\and{\hfil\hfil}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-\baselineskip} %
                                   {0.5\baselineskip} %
                                   {\raggedright\normalfont\large\bfseries}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-\baselineskip}%
                                     {0.2\baselineskip}%
                                     {\raggedright\normalfont\normalsize\bfseries}}

\newsavebox{\boxcorrespondingauthors}
\newcommand{\correspondingauthors}[1]{\savebox{\boxcorrespondingauthors}{\cw{#1}}}
\newenvironment{envcorrespondingauthors}{\noindent}
                              {\vspace{2ex}\\}

\newsavebox{\boxthemes}
\newcommand{\themes}[1]{\savebox{\boxthemes}[1cm][l]{\cw{#1}}}
\newenvironment{envthemes}{\noindent\textsc{\textbf{Th\`emes -- }}\it}
                              {\vspace{1ex}}
\newsavebox{\boxresume}
\newcommand{\resume}[1]{\sbox{\boxresume}{\cw{#1}}}
\newenvironment{envresume}{\center\noindent\textsc{\textbf{R\'esum\'e -- }}\it}
                              {\vspace{1ex}}
\newsavebox{\boxmotscles}
\newcommand{\motscles}[1]{\sbox{\boxmotscles}{\cw{#1}}}
\newenvironment{envmotscles}{\center\noindent\textsc{\textbf{Mots-cl\'es -- }}\it}
                              {\vspace{1ex}}
\newsavebox{\boxsectionsCNU}
\newcommand{\sectionsCNU}[1]{\savebox{\boxsectionsCNU}[0.5cm][s]{\cw{#1}}}
\newenvironment{envsectionsCNU}{\center\noindent\textsc{\textbf{Section(s) CNU pour cet article -- }}\it}
                              {\vspace{1ex}}
\newsavebox{\boxdoctorant}
\newcommand{\doctorant}[1]{\savebox{\boxdoctorant}[0.5cm][s]{\cw{#1}}}
\newenvironment{envdoctorant}{\center\noindent\textsc{\textbf{Article pr\'esent\'e à l'oral par un(e) doctorant(e) -- }}\it}
                              {\vspace{1ex}}


\def\@title{
  \vspace{-2cm}
  \rule[0.5ex]{\textwidth-48mm}{0.3mm}
  \hfill
  {\normalsize\it CNRIUT'\@lannee,~\@lelieu} \\
  \vspace*{1ex}
  {\LARGE \@letitre}
  \vspace*{3ex}
  \rule{\textwidth}{0.3mm}
}


% \def\@author{
%   \Large \@lesauteurs \\
%   \small{\texttt{\@lescourriels}}\vspace*{4ex} \\
%   \\
%   \@lesaffiliations
% }

\def\@author{
  \Large
  \begin{tabular}{c}
    Clément Combier$^{1,*}$ \\
    Adel Noureddine$^2$ \\
    Jose Enrique Armendariz-Inigo$^3$ \\
    Philippe Arnould $^4$
  \end{tabular}
  \vspace*{4ex}
  \begin{tabular}{c}
    \small{\texttt{clement.combier@univ-pau.fr}} \\
    \small{\texttt{adel.noureddine@univ-pau.fr}} \\
    \small{\texttt{enrique.armendariz@unavarra.es}} \\
    \small{\texttt{philippe.arnould@univ-pau.fr}}
  \end{tabular} \\
  \\
  \@lesaffiliations
}

\newcommand\creationEnTete{\maketitle\thispagestyle{empty}
       \vspace*{2ex}
       \begin{envcorrespondingauthors}
          \usebox{\boxcorrespondingauthors}
       \end{envcorrespondingauthors}
       \begin{envthemes}
          \usebox{\boxthemes}
       \end{envthemes}
       \begin{envresume}
         \usebox{\boxresume}
       \end{envresume} 
       \begin{envmotscles}
         \usebox{\boxmotscles}
       \end{envmotscles}
       \begin{envsectionsCNU}
         \usebox{\boxsectionsCNU}
       \end{envsectionsCNU}
       \begin{envdoctorant}
         \usebox{\boxdoctorant}
       \end{envdoctorant}
       \clearpage}

\selectbiblanguage{french}
\bibliographystyle{unsrt}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pwr}[PWr]
\LoadClass[12pt,a4paper,titlepage]{article}
% Marginesy
\RequirePackage[margin=2.5cm,bindingoffset=0.5cm,a4paper]{geometry}
% Interlinia
\linespread{1}
% Wcięcie
\setlength{\parindent}{0.7cm}
% Rozmiary tytułów rozdziałów
\usepackage{sectsty}
\sectionfont{\fontsize{14}{16.8}\selectfont}
\subsectionfont{\fontsize{13}{15.6}\selectfont}
\subsubsectionfont{\fontsize{12}{14.4}\normalfont}
\makeatletter
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{0ex}%
   {-3.25ex plus -1ex minus -0.2ex}%
   {1.5ex plus 0.2ex}%
   {\normalfont\normalsize\bfseries}}
\makeatother
% Przestrzeń przed i po wyrażeniach matematycznych
\setlength{\abovedisplayskip}{10pt}
\setlength{\belowdisplayskip}{10pt}
% Numeracja wyrażeń
\RequirePackage{amsmath}
\numberwithin{equation}{section}
% Numeracja rysunków i tabeli
\RequirePackage{chngcntr}
\counterwithin{table}{section}
\counterwithin{figure}{section}
% Rozmiar podpisów pod tabelami i rysunkami
\RequirePackage{caption}
\DeclareCaptionFont{10pt}{\fontsize{10pt}{0pt}\selectfont}
\captionsetup{figureposition=bottom,tableposition=top,skip=10pt,font=10pt}
% Odstępy od rysunków i tabel
\setlength{\textfloatsep}{10pt}
\setlength{\intextsep}{10pt}
% Paczki
\RequirePackage{graphicx}
\RequirePackage{fontspec}
\RequirePackage{hyperref}
\RequirePackage{polski}
\RequirePackage[polish]{babel}
% Czcionka
\setmainfont{Times New Roman}
% Pierwszy akapit
\RequirePackage{indentfirst}
% BibLaTex
\RequirePackage{csquotes}
\RequirePackage[backend=bibtex,style=pwr,sorting=nyt,language=polish]{biblatex}
\BiblatexSplitbibDefernumbersWarningOff
\DefineBibliographyStrings{polish}{
  urlseen          = {{dostęp:}}
}
\AddToHook{cmd/section/before}{\clearpage}
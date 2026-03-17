% libro-matua.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{libro-matua}[2026/03/10 v1.0.2 Clase para libros con estilos personalizados]

% --- Cargar paquetes esenciales ---
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{biblatex}
\RequirePackage{glossaries-extra}
\RequirePackage{imakeidx}

% --- Cargar estilos externos ---
\RequirePackage{libro-matua.bbx}
\RequirePackage{libro-matua.cbx}
\RequirePackage{libro-matua.glsdefs}

% --- Opciones de la clase ---
%\DeclareOption{1setcolor}{\input{palette1.def}}
%\DeclareOption{2setcolor}{\input{palette2.def}}
\DeclareOption{16m}{\xdef\jtype{16}\ExecuteOptions{twocolumn}}
\DeclareOption{6setcolor}{\xdef\ntype{6}\ExecuteOptions{twocolumn}}
\def\jtype{0}
\def\ntype{0}
\DeclareOption{1m}{\xdef\jtype{1}}
\DeclareOption{2m}{\xdef\jtype{2}}
\DeclareOption{3m}{\xdef\jtype{3}}
\DeclareOption{4m}{\xdef\jtype{4}}
\DeclareOption{5m}{\xdef\jtype{5}}
\DeclareOption{6m}{\xdef\jtype{6}}
\DeclareOption{7m}{\xdef\jtype{7}}
\DeclareOption{8m}{\xdef\jtype{8}}
\DeclareOption{9m}{\xdef\jtype{9}}
\DeclareOption{10m}{\xdef\jtype{10}}
\DeclareOption{11m}{\xdef\jtype{11}}
\DeclareOption{12m}{\xdef\jtype{12}}
\DeclareOption{13m}{\xdef\jtype{13}}
\DeclareOption{14m}{\xdef\jtype{14}}
\DeclareOption{15m}{\xdef\jtype{15}}
%\DeclareOption{15m}{\xdef\jtype{15}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{1setcolor}{\xdef\ntype{1}}
\DeclareOption{2setcolor}{\xdef\ntype{2}}
\DeclareOption{3setcolor}{\xdef\ntype{3}}
\DeclareOption{4setcolor}{\xdef\ntype{4}}
\DeclareOption{5setcolor}{\xdef\ntype{5}}
\DeclareOption{6setcolor}{\xdef\jtype{6}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Configuración básica ---
\AtBeginDocument{\@twocolumnfalse}
\ExecuteOptions{1setcolor,1m,11pt,onecolumn}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProcessOptions\relax
\LoadClass{book}
% ...
%%%%% Otros paquetes %%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{chngcntr}
\RequirePackage{aliascnt}
\RequirePackage{mwe-es}%load graphix,lipsum,...
\RequirePackage{booktabs}
\RequirePackage{fancyhdr}
\usepackage{setspace}
\usepackage{theoremref} %refereciar teoremas Por ejemplo: \thlabel{foobar}, \thref{foobar}
\RequirePackage{caption}
\usepackage{pifont}
\usepackage{marvosym}
\RequirePackage{xkeyval}
\RequirePackage{roboto}
%
% --- Comandos de estructura ---
\newcommand{\bibliofont}{\small\sffamily}
\newcommand{\numbibfont}{\large\bfseries}
% --- Configuración de índices ---
\makeindex[title={Índice Personalizado}, columns=2, intoc, options=-s tablealphab.ist]

% --- Configuración de hipervínculos ---
\RequirePackage{hyperref}
\hypersetup{
    linktoc=all,
    hidelinks,
    pdfborder={0 0 0},
    colorlinks=true,
    linkcolor = ptctitle,
    backref=true,
    pagebackref=true,
    hyperindex=true,
    breaklinks=true,
    urlcolor=ocre,
    citecolor = ocre,
    bookmarks=true,
    bookmarksopen=false,
    pdftitle={Title},
    pdfauthor={Author}
}
%
\endinput

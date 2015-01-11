\NeedsTeXFormat{LaTeX2e}[1996/06/01]
\ProvidesClass{defective}[2015/01/11 v0.1.1]
\setlength\paperheight {297mm} % A4
\setlength\paperwidth  {210mm}

%% размеры шрифтов (14 pt у основного)
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xivpt{17}%
   \abovedisplayskip 14\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus4\p@
   \belowdisplayshortskip 7\p@ \@plus4\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xiipt{14}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xviipt{22}}
\newcommand\Large{\@setfontsize\Large\@xxpt{25}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxvpt{30}}
\newcommand\huge{\@setfontsize\huge{29.86}{35}}
\newcommand\Huge{\@setfontsize\Huge{35.83}{40}}

%% параметры страницы
\setlength\parindent{1.5em}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{14\p@}
\setlength\headsep   {25\p@}
\setlength\topskip   {14\p@}
\setlength\footskip{30\p@}
\setlength\maxdepth{.5\topskip}

  \setlength\@tempdima{\paperwidth}
  \addtolength\@tempdima{-2cm}
  \addtolength\@tempdima{-1cm}
  \setlength\@tempdimb{500\p@}
  \ifdim\@tempdima>\@tempdimb\relax
    \setlength\textwidth{\@tempdimb}
  \else
    \setlength\textwidth{\@tempdima}
  \fi
  \@settopoint\textwidth

  \setlength\textheight{\paperheight}
  \addtolength\textheight{-1cm}
  \addtolength\textheight{-1cm}
  \setlength\marginparsep{10\p@}
\setlength\marginparpush{7\p@}
    \setlength\oddsidemargin    {0cm}
    \setlength\marginparwidth   {0cm}
  \@settopoint\oddsidemargin
  \@settopoint\marginparwidth
  \setlength\evensidemargin  {0cm}
  \@settopoint\evensidemargin
  \setlength\topmargin{-3cm}
  \@settopoint\topmargin
\setlength\footnotesep{9.8\p@}
\setlength{\skip\footins}{12\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {15\p@ \@plus 5\p@ \@minus 5\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{11\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{11\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{4\p@ \@plus 2\p@ \@minus 2\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 6\p@  \@plus2.5\p@ \@minus\p@
            \topsep 12\p@ \@plus5\p@   \@minus7\p@
            \itemsep6\p@  \@plus2.5\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    6\p@   \@plus3\p@ \@minus\p@
              \parsep    3\p@ \@plus\p@    \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    3\p@\@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

\newcommand\thepage{\arabic{page}}
\pagestyle{plain}
\endinput

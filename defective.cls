\NeedsTeXFormat{LaTeX2e}[1996/06/01]
\ProvidesClass{defective}[2015/01/11 v0.1.1]
\setlength\paperheight {297mm} % A4
\setlength\paperwidth  {210mm}

%% размеры шрифтов (14 pt у основного)
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xivpt{17}%
   \abovedisplayskip 10\p@
   \abovedisplayshortskip 4\p@
   \belowdisplayshortskip 8\p@
   \belowdisplayskip \abovedisplayskip
}
\newcommand\small{%
   \@setfontsize\small\@xiipt{14}%
   \abovedisplayskip 8\p@
   \abovedisplayshortskip 3\p@
   \belowdisplayshortskip 7\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 7\p@
               \parsep 5.5\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 7\p@
   \abovedisplayshortskip 3\p@
   \belowdisplayshortskip 6\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@
               \parsep 4\p@
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
%% http://en.wikibooks.org/wiki/LaTeX/Page_Layout#Page_dimensions
% абзацный отступ
\setlength\parindent{1.5em}

% ширина текста на странице
\setlength\textwidth\paperwidth
\addtolength\textwidth{-2cm}
\addtolength\textwidth{-1cm}

% высота текста на странице
\setlength\textheight\paperheight
\addtolength\textheight{-1cm}
\addtolength\textheight{-1cm}

% горизонтальные отступы
\setlength\hoffset{-1in}
\setlength\oddsidemargin{2cm}
\setlength\evensidemargin{2cm}

% вертикальные отступы
\setlength\voffset{-1in}
\setlength\topmargin{1cm}
\setlength\headheight{0cm}
\setlength\headsep{0cm}

% отступ подвала страницы (от низа текста до низа)
\setlength\footskip{.7cm}

\newcommand\thepage{\arabic{page}}
\pagestyle{plain}
\endinput

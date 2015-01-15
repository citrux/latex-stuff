\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{defective}[2015/01/13 v0.1.2]

%% размеры шрифтов (14 pt у основного)
%% http://en.wikibooks.org/wiki/LaTeX/Fonts#Sizing_text
\newcommand\tiny{\@setfontsize\tiny{6pt}{7.2pt}}
\newcommand\scriptsize{\@setfontsize\scriptsize{8pt}{9.6pt}}
\newcommand\footnotesize{\@setfontsize\footnotesize{10pt}{12pt}}
\newcommand\small{\@setfontsize\small{12pt}{14.4pt}}
\renewcommand\normalsize{\@setfontsize\normalsize{14pt}{16.8pt}}
\newcommand\large{\@setfontsize\large{17pt}{20.4pt}}
\newcommand\Large{\@setfontsize\Large{20pt}{24pt}}
\newcommand\LARGE{\@setfontsize\LARGE{25pt}{30pt}}
\newcommand\huge{\@setfontsize\huge{29.17pt}{35pt}}
\newcommand\Huge{\@setfontsize\Huge{33.3pt}{40pt}}

%% параметры страницы
%% http://en.wikibooks.org/wiki/LaTeX/Page_Layout#Page_dimensions

%% высота и ширина страницы
\setlength\paperheight{297mm} % A4
\setlength\paperwidth{210mm}

% абзацный отступ
\setlength\parindent{1.5em}

% ширина текста на странице
\setlength\textwidth{\paperwidth}
\addtolength\textwidth{-2cm}
\addtolength\textwidth{-1cm}

% высота текста на странице
\setlength\textheight{\paperheight}
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

% вид нумерации страниц
\newcommand\thepage{\arabic{page}}

% стиль колонтитулов
\pagestyle{plain}



\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}

%% \startsection{<name>}{<level>}{<indent>}
%% {<beforeskip>}{<afterskip>}{<style>}*[<altheading>]{<heading>}
\newcommand\section{
    \@startsection {section}{0}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries\center\MakeUppercase}
}
\newcommand\subsection{
    \@startsection{subsection}{1}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries}
}
\newcommand\subsubsection{
    \@startsection{subsubsection}{2}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries}
}

%% \newenvironment{name}[num]{before}{after}
\newenvironment{titlepage}{
    \newpage
    \thispagestyle{empty}
    \setcounter{page}\@ne
}
{
    \newpage
    \setcounter{page}\@ne
}

\setlength\leftmargini{2.5em}
\leftmargin\leftmargini
\setlength\leftmarginii{2.2em}
\setlength\leftmarginiii{1.87em}
\setlength\leftmarginiv{1.7em}
\setlength\labelsep{.5em}
\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

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
\endinput

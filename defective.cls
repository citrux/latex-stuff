\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{defective}[2015/05/09 v0.1.3]

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

\setcounter{secnumdepth}{3}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}

%% \startsection{<name>}{<level>}{<indent>}
%% {<beforeskip>}{<afterskip>}{<style>}*[<altheading>]{<heading>}
\newcommand\section{
    \@startsection{section}{1}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries\center\MakeUppercase}
}
\newcommand\subsection{
    \@startsection{subsection}{2}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries\center}
}
\newcommand\subsubsection{
    \@startsection{subsubsection}{3}{\z@}{.5cm}{.5cm}
    {\normalfont\normalsize\bfseries\center}
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
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@arabic\c@enumii}
\renewcommand\theenumiii{\@arabic\c@enumiii}
\renewcommand\theenumiv{\@arabic\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{\theenumi.\theenumii.}
\newcommand\labelenumiii{\theenumi.\theenumii.\theenumiii.}
\newcommand\labelenumiv{\theenumi.\theenumii.\theenumiii.\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi.\theenumii}
\renewcommand\p@enumiv{\p@enumiii.\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

\def\@listi{\leftmargin 2.5em
            \labelsep .5em
            \labelwidth\leftmargin
            \advance\labelwidth-\labelsep
            \parsep 7.5\p@
            \topsep 10\p@
            \itemsep 7.5\p@}
\def\@listii{\leftmargin 2.2em
             \labelwidth\leftmargin
             \advance\labelwidth-\labelsep}
\def\@listiii{\leftmargin 1.9em
              \labelwidth\leftmargin
              \advance\labelwidth-\labelsep}
\def\@listiv {\leftmargin 1.7em
              \labelwidth\leftmargin
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin 1.6em
              \labelwidth\leftmargin
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin 1.5em
              \labelwidth\leftmargin
              \advance\labelwidth-\labelsep}

% figure
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

% table
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

% captions
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\newcommand\captiondelim{~---}
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1\captiondelim #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1\captiondelim #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\newcounter{task}
\renewcommand\thetask{\@arabic\c@task}
\newenvironment{task}[1][]{\refstepcounter{task}\par\medskip\noindent%
   \textbf{\taskname~\thetask. (#1)} \itshape}{\medskip}
\endinput

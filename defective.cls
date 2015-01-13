\NeedsTeXFormat{LaTeX2e}[1996/06/01]
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
\endinput

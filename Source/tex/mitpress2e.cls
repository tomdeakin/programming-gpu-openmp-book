%
% New MIT Press class file for books.  The aim is to take advantage of
% new Latex2e features (such as hyperref) and to eliminate complex
% use of TeX
%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{../tex/mitpress2e}
              [2002/08/16
 MIT Press document class]

\LoadClass{book}

% Declare any options here
\ProcessOptions
\usepackage[monochrome]{xcolor} 
%%% TEMPORARY - MAKE OVERFULLRULE VISIBLE
%% Should figure out how to do this only on the draft option
\overfullrule0pt

%
% Modifications for the book class for MIT Press
%
% Line spacing; allow ragged bottom rather than stretching the internal lines
\raggedbottom
\lineskip 1pt \normallineskip 1pt
\baselineskip=13pt
\def\baselinestretch{1}
%
% Part, chapter, and section fonts in the book class are set using specific
% font choices (e.g., \Huge for chapter).  These are defined in 
% book.cls, using the macros @makechapterhead etc.
% The original MIT Press style used 11pt bold for all but parts, which
% were 12pt bold, for the table of contents
% - not done -
%
% Define an 11pt font size, using the same approach as in book.clo
\newcommand\eleven{\@setfontsize\eleven\@xipt{13}}
\newcommand\eightpoint{\@setfontsize\eightpoint\@viiipt{9}}
\def\@xxxvipt{36}
%
% We can't use the setfontsize here because the font package doesn't 
% know about these fonts.  Using \DeclareFontFamily is problematic,
% since we can't set an alias (e.g., use cmbx fonts, but call it myhugecmbx)
%\newcommand\thirtysix{\@setfontsize\thirtysize\@xxxvipt{40}}
%\newcommand\thirtysixbold{\thirtysix\bf}
\font\thirtysixbold=cmbx10 at 36pt

\def\chapheadfont{\eleven\bf}
\def\chaptocfont{\eleven\bf}

% Page shape and margins
%\oddsidemargin 0pt
%\evensidemargin 0pt
%% Latex2e ignores Knuth's spec about 1inch margins.
%% Further, I suspect that they reset them for A4 pages
\oddsidemargin 1in
\evensidemargin 1in
%
\textheight 41pc
% ??? textwidth reset to 30pc later
%\textwidth 26pc 
\newdimen\hsizeminusfive
\hsizeminusfive=21pc
\marginparwidth .75in
\marginparsep 7pt
% Top top margin of 0.75 inches appears too large (A4 page effect in new
% latex?)
\topmargin .75in
% Move the left margin
% how does the leftmargin relate to the odd/even side margin?
\leftmargin 1.0in
%% A headheight of 5pc is a better match, except that the book.cls outputpage
%% puts a vfil on the TOP instead of the BOTTOM of the text.  To fix this,
%% We can put a height of 5pc into the header definition
%%% Grrr.  To fit with the basic latex mode, make the head thin (to hold just
%%% the heading but increase the head sep).
\setlength\headheight{13pt}
%%
%% A headsep of 2pt matches the use in book.cls @outputpage
\setlength\headsep{5pc}  % was 2pt
%
% Use a larger footins skip than in bk10
\skip\footins 12pt plus 4pt minus 2pt
%\floatsep 12pt plus 2pt minus 2pt
% Use a *smaller* textfloatsep than in bk10
\textfloatsep 18pt plus 2pt minus 4pt
%\intextsep 12pt plus 2pt minus 2pt
%\dblfloatsep 12pt plus 2pt minus 2pt
%\dbltextfloatsep 20pt plus 2pt minus 4pt

%\marginparpush 5pt
 
\parskip 0pt plus 1pt
\parindent 1em
\topsep 8pt plus 2pt minus 4pt
\partopsep 2pt plus 1pt minus 1pt
\itemsep 4pt plus 2pt minus 1pt

% At request of MIT Press, increased widow penalty to discourage
% widows (last line of a paragraph on a separate page).  book.cls sets
% this to 4000 within the bibliography. Increased from 1400 to 7000
% and then futher to 8500 
% (6000 wasn't enough to suppress some widow/clubs).  Also see
% comments on raggedbottom 
\widowpenalty8500%
\displaywidowpenalty8500%
\clubpenalty8500%
% Setting finalhyphendemerits to 10000 prevents a hyphen on the 2nd to last
% line of a paragraph.
\finalhyphendemerits=10000%

\textwidth=30pc
% These sizes are used in the code to create the table of contents
%\hsizeminusfive=25pc
%\hsizeminussix=24pc
%\hsizeminusseven=23pc

% MIT Press asked the pages be flush at the top
% (these are set in bk10.clo, etc.)
%\@fptop 0pt plus 1fil
\setlength\@fptop{0pt}
\setlength\@fpsep{8pt plus 2fil}
\setlength\@fpbot{0pt plus 1fil}
% MIT Press asked the pages be flush at the top
%\@dblfptop 0pt plus 1fil
\setlength\@dblfptop{0pt}
\setlength\@dblfpsep{8pt plus 2fil}
\setlength\@dblfpbot{0pt plus 1fil}

%
% Redefine headings in case they were changed
%\pagestyle{headings}
%
% Use References instead of Bibliography
\renewcommand\bibname{References}

% ------------------------------------------------------------------------
% Changes to Part/Chapter/Section formatting.
% These routines replace the corresponding code from book.cls
%
% The change to chaptermark and sectionmark is to remove the \MakeUppercase
% that the standard book class applies.  No other changes
  \def\ps@OrigHeadings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@chapapp\ \thechapter % had \ . to add a space/period
          \fi
        \fi
        }}{}}%  % was ##1 to include the chapter title
    \def\sectionmark##1{%
      \markright {{%
        \ifnum \c@secnumdepth >\z@
        %  \thesection. \ %   %% uncomment to include the section number
        \fi
        ##1}}}}

%%%%%% revised headings by JBC(90) for Ashley %%%%%%
%%%%%% only chapter titles are put in head, no section titles %%%%%%
% See Origheadings for the behavior in the ``book'' style.
\def\ps@headings{%
\def\@oddfoot{}%
\def\@evenfoot{}%
% Set the font and size (nine pt roman?)
\def\@evenhead{\thepage\hfil \leftmark}%
\def\@oddhead{\hbox{}\rightmark \hfil\thepage}%
\let\@mkboth\markboth
%% +
    \let\sectionmark\@gobble
%% + to here
\def\chaptermark##1{\markboth{%
{\ifnum \c@secnumdepth>\m@ne \@chapapp\ \thechapter \ \fi }}%
{\ifnum \c@secnumdepth>\m@ne ##1 \ \fi }}}
% End of \def\ps@headings
%
% Change cleardoublepage to ensure that the blank page is entirely blank;
% the default LaTeX definition (see latex.ltx) does not set 
% thispagestyle{empty} on the inserted page
%% Original from latex.ltx:
%%\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
%%    \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
      \hbox{}\thispagestyle{empty}\newpage
      \if@twocolumn \hbox{}\thispagestyle{empty}\newpage\fi\fi\fi}

% Also remove \MakeUppercase from contents name
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
%    \chapter*{\contentsname
%        \@mkboth{\contentsname}{\contentsname}}%
    \addcontentsline{toc}{invis}{Contents}
    \thispagestyle{empty}
    \vbox to0pt{\vss\vbox to 5.6pc{% was 5.6pc WYN
    \hbox{\chapheadfont \contentsname}\vfill}}
        \@mkboth{\contentsname}{\contentsname}%
    % reduce the ``hsize-5pc'' variable to fit
    \hsizeminusfive=\hsize \advance\hsizeminusfive by-5pc
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\bibname}{\bibname}%   Removed MakeUpperCase
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \thispagestyle{empty}%   First page has no page numbers
      \sloppy
      % Increased club and widow penalty to match the rest of the document
      \clubpenalty8500
      \@clubpenalty \clubpenalty
      \widowpenalty8500%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
%
% nohyphen disallows hyphens and switches to raggedright mode
\def\nohyphen{\hyphenpenalty10000\raggedright}
%
\def\optalign{\relax}
\def\opthalign{\relax}
%\def\optalign{\vrule width 0.2pt height8pt}
%\def\opthalign{\hbox{\optalign}}
% MIT Press doesn't use dotted table of contents lines, so these 5
% commands (the l@<sectionname> commands) % are redefined to not use
% dottedtocline (which has 5 args; the last two are the section title
% and the page number.  We redefine the dottedtocline to remove the dots
% Args are
% level (used to suppress entries if greater than c@tocdepth
% extra leftskip to number
% extra leftskip to title
% number of section
% title of section
\def\@nondottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
%%     {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
%%      \parindent #2\relax\@afterindenttrue
%%      \interlinepenalty\@M
%%      \leavevmode
%%      \@tempdima #3\relax
%%      \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
%%      {#4}\nobreak % Remove leaders with dots here
%%      \hfill
%%      \nobreak
%%      \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
%%      \par}%
%    {%
%     \leftskip #2\relax\parindent#2\relax
%     \leavevmode
%     \@tempdima #3 \relax
%     \advance\leftskip\@tempdima
%
     \setbox1=\hbox to \hsize{\baselineskip=12pt\nohyphen\opthalign%
       \noindent\hskip#2\opthalign%
       % This is a hack; there should be no hskip-2.2222 here; there
       % is something wrong somewhere else
       \ifnum #1>1\hskip-2.222pt\fi
     \hsize=\hsizeminusfive
     \advance\hsize-#2
     \vtop{\noindent\hangindent\secnumwidth\hangafter1\relax\optalign#4\hfill}\hfill%
       \hbox to 5pc{\hss\vtop{\hbox{\optalign\normalfont#5}}%
     }\hfill}%
     \setbox3=\copy1
     \box1
     \ifnum #1=1\relax\vskip3pt\else\vskip1pt\fi
     \ifdim\dp3>6pt\vskip5pt\fi%
  \fi}

\newdimen\secnumwidth\secnumwidth=2.4pc    %%% Was 2.0pc - WDG
% chapter processing needs to bold face, enlarge the chapter title.
% Here is the version from book.cls:
%% \newcommand*\l@chapter[2]{%
%%   \ifnum \c@tocdepth >\m@ne
%%     \addpenalty{-\@highpenalty}%
%%     \vskip 1.0em \@plus\p@
%%     \setlength\@tempdima{1.5em}%
%%     \begingroup
%%       \parindent \z@ \rightskip \@pnumwidth
%%       \parfillskip -\@pnumwidth
%%       \leavevmode \bfseries
%%       \advance\leftskip\@tempdima
%%       \hskip -\leftskip
%%       #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
%%       \penalty\@highpenalty
%%     \endgroup
%%   \fi}

%\renewcommand*\l@chapter{\@nondottedtocline{0}{0em}{\secnumwidth}}
% Add some skip on the top of the chapter
% Also, make sure that we use vtop for the box, so that the page
% number is placed even with the first line
\def\authorsep{---}
\renewcommand*\l@chapter[2]{
  \ifnum 0>\c@tocdepth \else
%%     \vskip 6pt \@plus.2\p@
%%     {\leftskip 0em\relax \rightskip \@tocrmarg \parfillskip -\rightskip
%%      \parindent 0em\relax\@afterindenttrue
%%      \interlinepenalty\@M
%%      \leavevmode
%%      \@tempdima \secnumwidth\relax
%%      \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     \vskip11pt
     \hbox to \hsize{\nohyphen
     \hsize=\hsizeminusfive
     \vtop{\noindent\hangindent\secnumwidth\hangafter1\chaptocfont #1\hfill}\hfill
     \hbox to 5pc{\hss\vtop{\hbox{\normalfont#2}}%
     }\hfill}\vskip5pt
     %\nobreak % Remove leaders with dots here
%     \hfill 
%    \nobreak
%     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #2}%
%     \par}%
  \fi}

%
% We may want to add some skip for sections that have multi-line titles
% (update nondottedtocline to handle that in all cases?).  See
% mitpress.cls in the original Beowulf book.
\renewcommand*\l@section{\@nondottedtocline{1}{0em}{\secnumwidth}}
% Is the .95 \secnumwidth a hack (was just \secnumwidth)
\renewcommand*\l@subsection{\@nondottedtocline{2}{.95\secnumwidth}{\secnumwidth}}
% Do we need the next three, since we suppress these lines in the 
% table of contents?
\renewcommand*\l@subsubsection{\@nondottedtocline{3}{3.8em}{4.1em}}
\renewcommand*\l@paragraph{\@nondottedtocline{4}{7.0em}{5em}}
\renewcommand*\l@subparagraph{\@nondottedtocline{5}{10em}{6em}}
\def\toclevel@matter{-1}  % Needed for hyperref, which wants this value inorder
                          % to understand where to put the entry on the 
                          % PDF bookmark page.  This puts it at the same level
                          % as parts
\def\toclevel@invis{-1}   % Needed for hyperref, which wants this value inorder
                          % to understand where to put the entry on the 
                          % PDF bookmark page.  This puts it at the same level
                          % as parts
\newcommand*\l@matter{\@nondottedtocline{2}{\secnumwidth}{\secnumwidth}}
\def\eattwo#1#2{\relax}
\newcommand*\l@invis{\eattwo}
% No page numbers on parts. (discard the second argument)
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil\null}\par  % removed the page number here (#2)
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}

%
% MIT Press has a distinctive chapter format.  This is *very* different
% than the version in book.cls, shown below
%% \def\@makechapterhead#1{%
%%   \vspace*{50\p@}%
%%   {\parindent \z@ \raggedright \normalfont
%%     \ifnum \c@secnumdepth >\m@ne
%%       \if@mainmatter
%%         \huge\bfseries \@chapapp\space \thechapter
%%         \par\nobreak
%%         \vskip 20\p@
%%       \fi
%%     \fi
%%     \interlinepenalty\@M
%%     \Huge \bfseries #1\par\nobreak
%%     \vskip 40\p@
%%   }}

%
% Redefine numberline to place the chapter/section number 
% in a box of size secnumwidth, and set the hangindent to that value.
\def\numberline#1{\hangindent=\secnumwidth\noindent\hbox to\secnumwidth{#1\hss}}
%
% 1/8/03
% redefined the chapter head so that the contents line can contain 
% additional information
% \texorpdfstring#1#2 gives #1 for TeX and #2 for the PDF string.
% This is defined by the hyperref package.  If is is not available, use
%   \def\texorpdfstring#1#2{#1}
% The following line provides that definition if needed, and can be
% added after hyperref is included.
%\ifx\texorpdfstring\relax\def\texorpdfstring#1#2{#1}\fi
\def\@chapter[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
        \if@mainmatter
            \refstepcounter{chapter}%
            \typeout{\@chapapp\space\thechapter.}%
            \ifx\thechapterauthors\relax
                \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
            \else
                \addcontentsline{toc}{chapter}%
                     {\texorpdfstring{\protect\numberline{\thechapter}#1%
                     \normalfont\normalsize\protect\authorsep\protect\emph{\thechapterauthors}}{\thechapter\ #1-\thechapterauthors}}%
            \fi
%                         \addcontentsline{toc}{chapter}%
%                                   {\protect\numberline{\thechapter}#1}%
        \else
            \addcontentsline{toc}{chapter}{#1}%
        \fi
    \else
        \addcontentsline{toc}{chapter}{#1}%
    \fi
    \chaptermark{#1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \if@twocolumn
        \@topnewpage[\@makechapterhead{#2}]%
    \else
        \@makechapterhead{#2}%
        \@afterheading
    \fi
\let\thechapterauthors=\relax}
% Also *start* with thechapterauthors set to relax
\let\thechapterauthors=\relax

%
% Added \thispagestyle{empty} to suppress the page number on this page only.
\def\@makechapterhead#1{\noindent\hbox to0pt{\vbox to0pt{\vss%
\vbox to5.6pc{\noindent{\thirtysixbold\thechapter} %was 5.6 JBC
\hskip6pt
\vbox{\baselineskip=16pt\raggedright\hyphenpenalty10000
\hsize=.86\textwidth\chapheadfont #1}%
\ifx\thechapterauthors\relax\else
\vskip 10pt
\vbox{\emph{\noindent\thechapterauthors}}%
\fi
\thispagestyle{empty}
\vfill}}\hss}
}
%
% Makeschapterhead is used for \chapter*{name}, such as \chapter*{Contents}.
\def\@makeschapterhead#1{\vspace*{50pt}{\parindent 0pt\raggedright%
\interlinepenalty\@M\Huge\textbf{#1}\par\nobreak\vskip 40pt}}

%
% The definition of part in book.cls include the formatting of the part
% page
\newbox\partnumbox
\newdimen\partnumwidth
\def\numpart#1{\hbox to \secnumwidth{#1\hss}}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\texorpdfstring{\numpart{\thepart}#1}{\thepart\ #1}}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}\thispagestyle{empty}%
% The following is the original text for the part formatting
%%     {\centering
%%      \interlinepenalty \@M
%%      \normalfont
%%      \ifnum \c@secnumdepth >-2\relax
%%        \huge\bfseries \partname\nobreakspace\thepart
%%        \par
%%        \vskip 20\p@
%%      \fi
%%      \Huge \bfseries #2\par}%
% Here is the replacement
\setbox\partnumbox=\hbox{\thirtysixbold\thepart\hskip10pt}%
\partnumwidth=\wd\partnumbox
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to 5.6pc{% was 5.6pc WYN
\noindent{\box\partnumbox\vbox{\advance\hsize by-\partnumwidth
\baselineskip=13pt\chapheadfont\noindent\uppercase{#1}\vskip1sp}}%
\vfill}}\hss}\vfill
%
    \@endpart}

%
% Change the fonts and spacing for the section commands
% Beware of negative afterskips (used in the following; they can cause
% sections to be moved to the previous page.  I've left these as
% defined (with correct fonts for mitpress style) in the hopes that
% latex2e has fixed those problems.  
% Added (Ruud)

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\eleven\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}

% Ruud - Added to support subsubsections in the TOC:
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

% Change the level of detail in the table of contents once we enter
% the appendix
\let\OrigAppendix=\appendix
\renewcommand\appendix{\typeout{Using reset Appendix command}%
\OrigAppendix\global\setcounter{tocdepth}{0}}
% ------------------------------------------------------------------------
% Title page and front matter for MIT Press books
\def\title#1{\gdef\thetitle{\def\\ {\hfill\break}%
\noindent\baselineskip=14pt\normalfont\large\textbf{#1}\vskip1sp}}
 
\def\subtitle#1{\gdef\thesubtitle{\vskip1pt%
\def\\ {\hfill\break}
% We may want to make this 11pt rather than normalsize
\noindent\baselineskip=13pt{\normalfont\normalsize #1}\vskip1sp}}
%%
%% Allow a edition marker on the inside title page
\def\edition#1{\gdef\theedition{\vskip1pt%
\def\\ {\hfill\break}
\noindent\baselineskip=13pt{\large #1}\vskip1sp}}% was \eleven
 
\def\author#1{\gdef\theauthor{\noindent\baselineskip=13pt{\large #1}%was \eleven
\vskip1sp}}
\def\theimprint{\vtop{\parskip=0pt\parindent=0pt
{\large\baselineskip=13pt  %jbc was 12/14pt; wdg font was \eleven
%A Bradford Book
%
The MIT Press
 
Cambridge, Massachusetts
 
London, England\vskip1sp}}}
 
\gdef\thesubtitle{}
\gdef\theedition{}
 
% added \par\vss to avoid 'underfull \vbox' message -- Glenn Kramer
% Large is 14pt in bk10
\def\booktitlepage{{\parindent0pt\hbox to0pt{\vbox to0pt{\vss\vbox
to 5.6pc{\normalfont\Large\textbf{\thetitle}\par\vss}}\hss}}\thispagestyle{empty}}
 
\def\secondbooktitlepage{\newpage\thispagestyle{empty}%
\ifodd\count0\else
\thispagestyle{empty}\hbox to\textwidth{\hfill}\newpage\fi
\thispagestyle{empty}\pagestyle{headings}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox
to 5.6pc{\noindent\thetitle \vskip1sp\vfill}}\hss}}
 
\def\printtitlepage{\vfill\eject\thispagestyle{empty}%
\vbox to 0pt{\vss\vbox to 5.6pc{\thetitle
\ifx\thesubtitle\empty\vfill\else\thesubtitle\vfill\fi%
%% Add 2nd edition stuff
\ifx\theedition\empty\else\theedition\vfill\fi%
}}%
\vspace*{.2pc}\theauthor
\vfill\theimprint}

%
% The series page goes immediately after the title page, not on the next
% odd (right hand side) page.
\def\seriespage#1#2{
\vfill\eject
\thispagestyle{empty}
\noindent
\hbox{\normalfont\normalsize\textbf{#1}}% was chapheadfont, \elevenbold
\vskip0pt
\hbox{\normalfont\normalsize #2}% was \eleven
\vskip-9.5pt}
 
\def\seriesforward{%
\thispagestyle{empty}\markboth{\relax}
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to
5.6pc{\noindent\large\textbf{Series Foreword}\vskip1sp\vfill}}\hss}% was 5.6pc WYN
\addcontentsline{toc}{matter}{Series Foreword}}

%
% Sections in the frontmatter have a special format.  In the original 
% mitpress macros, these were called \frontmatter and \endmatter.
% However, latex2e defines a different frontmatter macro, so we have
% renamed these as frontsection
\def\frontsection#1{%
%% Clear double page with empty headers
\newpage\thispagestyle{empty}%
\ifodd\count0
\else \thispagestyle{empty}\hbox to\textwidth{\hfill}%
\newpage\thispagestyle{empty}\fi
\thispagestyle{empty}\pagestyle{headings}%
\markboth{#1}{#1}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to
5.6pc{\noindent\chapheadfont #1\vskip1sp\vfill}}\hss}% was 5.6pc WYN
\addcontentsline{toc}{matter}{#1}}

%
% endmatter is used in References and Index 
\def\endmatter#1{\newpage\thispagestyle{empty}%
\ifodd\count0
\else \thispagestyle{empty}\hbox to\textwidth{\hfill}%
\newpage\thispagestyle{empty}\fi
\thispagestyle{empty}\pagestyle{headings}%
\markboth{#1}{#1}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to
5.6pc{\noindent\chapheadfont #1\vskip1sp\vfill}}\hss}% was 5.6pc WYN
\addcontentsline{toc}{matter}{#1}}

%
% Start with roman page numberings
\pagenumbering{roman}

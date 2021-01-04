%%% $Id: mitpress.cls,v 1.1 2005/01/27 15:00:44 rusmatt Exp $
%%%%% This file is called mitpress.cls
\input cmfonts
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This Style file prepared by Amy Hendrickson, TeXnology Inc.          %%
%% exclusively for the use of MIT Press. Copyright TeXnology Inc.       %%
%% All rights reserved.                                                 %%
%% Inquiries to: Amy Hendrickson, (617) 738-8029                        %%
%% net address: amyh@ai.mit.edu                                         %%
%% It is a variation on book.sty, released by Leslie Lamport 23 Sep 85  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This has been made into a class file by William Gropp                  %
% It uses the LaTeX2e book.cls as the base file, and contains only the   %
% (fairly extensive) modifications to that class file                    %
% 10/9/98
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Added chapterauthors command for books with an overall author (or editor)
% and individual chapter authors.  Author names show up in the toc
% WDG 11/22/00
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Modification history:
%%% 1.50  Began versioning, 92.9.23, PAO
%%% 1.51  A few bug fixes and spacing changes, particularly the list
%%%       indentation parameters.  92.9.23, PAO
%%% 1.52  Change list indentation parameters to allow second and third
%%%       level lists.  This should eventually be run through MITP's
%%%       design department.  93.06.17, PAO
%%% 1.53  Change \elevenbold in most places to \chapheadfont so it can be
%%%       parameterized.  This is for chapter headings, frontmatter,
%%%       backmatter.  Also introduced \secheadfont for first level section
%%%       headings, and \chaptocfont and \sectocfont for table of contents.
%%%       Also, \secnumwidth for toc, modified \tableofcontents to set
%%%       \hsizeminusfive and friends to look at \secnumwidth.
%%%       If changed, these must be defined in the preamble.  93.07.13, PAO
%%% 1.54  Add $ Id $ line.  Trivial change. PAO
%%% 1.55  Fix the toc code that I broke in 1.53.  Add definition of
%%%       \@mkboth to \ps@headings and \ps@myheadings, as per LaTeX
%%%       expectations.
%%% 1.56  Fix \secheadfont to actually do something.  Flush
%%%       \sectocfont: too closely tied to the design.
%%% 1.57  Change 7x9 page width from 32pc to 30pc, per T.E.'s request.
%%%       This also required changing \hsizeminusfive and friends.
%%%       93.10.1, PAO

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{mitpress}
              [1998/10/05 
 MIT Press document class]

\LoadClass{book}

%% These may override book.cls
\DeclareOption{mitfleqn}{\input{mitfleqn.sty}}
\DeclareOption{make-index}{\input{make-index.sty}}
\DeclareOption{epsf}{\input{epsf.sty}}
%\DeclareOption{anlhelper}{\input{anlhelper.sty}}
\ProcessOptions


\typeout{\space\space\space\space\space\space\space\space\space}
\typeout{Document Style `MATH' for MIT Press, 6in. by 9in.\space}
\typeout{Version 1.56, 20 July 1993\space}
\typeout{Copyright (c) 1987 by Amy Hendrickson, TeXnology, Inc.\space}
\typeout{Revised February 1991 and later by MIT Press.\space}
\typeout{\space\space\space\space\space\space\space\space\space}
 
%% sty->cls
%% These should be handled in book.cls
%\def\@ptsize{0} \@namedef{ds@11pt}{\def\@ptsize{1}}
%\@namedef{ds@12pt}{\def\@ptsize{2}}
%\@twosidetrue \@mparswitchtrue \def\ds@draft{\overfullrule 5pt}
%\@options
%% end sty->cls
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Definitions of dimensions, page layout, type sizes,
%%% positions and leadings for environments.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% WDG
%% In latex 2e, raggedbottom uses a definition
%   \def\@textbottom{\vskip \z@ \@plus.0001fil}\let\@texttop\relax
%% This is very small, and isn't enough to allow ragged bottom to 
%% overcome club and widow lines.  
\raggedbottom
% fix for raggedbottom
%\def\@textbottom{\vskip \z@ \@plus1fil}\let\@texttop\relax
% end fix
\lineskip 1pt \normallineskip 1pt
\baselineskip=13pt
\def\baselinestretch{1}
 
\def\chapheadfont{\elevenbold}
\def\secheadfont{\elevenbold}
\def\chaptocfont{\elevenbold}
\def\parttocfont{\twelvebold}
% Removed 1.56 -- PAO
%\def\sectocfont{\elevenbold}

%% sty->cls
%%\renewcommand{\normalsize}{\fontsize{10}{12}\selectfont}
%% end sty->cls
%% sty->cls (bk10.clo)
%\def\@normalsize{\@setsize\normalsize{13pt}\xpt\@xpt
%\abovedisplayskip 10pt plus2pt minus5pt
%\belowdisplayskip \abovedisplayskip
%\abovedisplayshortskip \z@ plus3pt
%\belowdisplayshortskip 6pt plus3pt minus3pt}
% 
%\def\small{\@setsize\small{11pt}\ixpt\@ixpt
%\abovedisplayskip 8.5pt plus 3pt minus 4pt
%\belowdisplayskip \abovedisplayskip
%\abovedisplayshortskip \z@ plus2pt
%\belowdisplayshortskip 4pt plus2pt minus 2pt
%\def\@listi{\topsep 4pt plus 2pt minus 2pt
%\parsep 2pt plus 1pt minus 1pt
%\itemsep \parsep}}
% 
%\def\footnotesize{\@setsize\footnotesize{8pt}\viiipt\@viiipt
%\abovedisplayskip 6pt plus 2pt minus 4pt
%\belowdisplayskip \abovedisplayskip
%\abovedisplayshortskip \z@ plus 1pt
%\belowdisplayshortskip 3pt plus 1pt minus 2pt
%\def\@listi{\topsep 3pt plus 1pt minus 1pt
%\parsep 2pt plus 1pt minus 1pt
%\itemsep \parsep}}
% 
%\def\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
%\def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
%\def\large{\@setsize\large{14pt}\xiipt\@xiipt}
%\def\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
%\def\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
%\def\huge{\@setsize\huge{25pt}\xxpt\@xxpt}
%\def\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}\normalsize
%% end sty->cls
 
\oddsidemargin 0pt
\evensidemargin 0pt
\textheight 41pc
\textwidth 26pc 
\marginparwidth .75in
\marginparsep 7pt
\topmargin .75in
%% sty->cls
%\headheight 12pt
%% A headheight of 5pc is a better match, except that the book.cls outputpage
%% puts a vfil on the TOP instead of the BOTTOM of the text.  To fix this,
%% We can put a height of 5pc into the header definition
\headheight 5pc
%% sty->cls
%\headsep0pt% .25in
%%
%% A headsep of 2pt matches the use in book.cls @outputpage
\headsep2pt%
%% sty->cls
%\footheight 12pt
%\footskip.35in
%% end sty->cls
\columnsep 10pt
\columnseprule 0pt
\footnotesep 6.65pt
\skip\footins 12pt plus 4pt minus 2pt
\floatsep 12pt plus 2pt minus 2pt
\textfloatsep 18pt plus 2pt minus 4pt
\intextsep 12pt plus 2pt minus 2pt
%% sty->cls
%\@maxsep 18pt
%% end sty->cls
\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 20pt plus 2pt minus 4pt
%% sty->cls
%\@dblmaxsep 20pt
%% end sty->cls
% MIT Press asked the pages be flush at the top
%\@fptop 0pt plus 1fil
\@fptop 0pt
\@fpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil
% MIT Press asked the pages be flush at the top
%\@dblfptop 0pt plus 1fil
\@dblfptop 0pt
\@dblfpsep 8pt plus 2fil
\@dblfpbot 0pt plus 1fil
\marginparpush 5pt
 
\parskip 0pt plus 1pt
\parindent 1em
\topsep 8pt plus 2pt minus 4pt
\partopsep 2pt plus 1pt minus 1pt
\itemsep 4pt plus 2pt minus 1pt
\@lowpenalty 51
\@medpenalty 151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty -\@lowpenalty
\@itempenalty -\@lowpenalty

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% changes made by William Gropp:  At request of MIT Press, increased
% widow penalty to discourage widows (last line of a paragraph on a separate
% page).  book.cls sets this to 4000 within the bibliography.
% Increased from 1400 to 7000 (6000 wasn't enough to suppress some
% widow/clubs).  Also see comments on raggedbottom
\widowpenalty8500%
\displaywidowpenalty8500%
\clubpenalty8500%
% Setting finalhyphendemerits to 10000 prevents a hyphen on the 2nd to last
% line of a paragraph.
\finalhyphendemerits=10000%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\def\6x9width{26pc}
\def\7x9width{30pc}
\newcount\pw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% changes made by Glenn Kramer:
% added \hsizeminusfive, \hsizeminussix, \hsizeminusseven to replace
% hardwired constants in the macros which were made for 6x9 format.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newdimen\hsizeminusfive
\newdimen\hsizeminussix
\newdimen\hsizeminusseven
\newdimen\secnumwidth\secnumwidth=2.4pc    %%% Was 2.0pc - WDG
\def\pagewidth#1{\pw=#1
         \ifnum\pw=6 \textwidth\6x9width
                     \hsizeminusfive=21pc
                     \hsizeminussix=20pc
                     \hsizeminusseven=19pc
         \else
         \ifnum\pw=7 \textwidth\7x9width
                     \hsizeminusfive=25pc
                     \hsizeminussix=24pc
                     \hsizeminusseven=23pc
         \else\errmessage{You must choose another pagewidth}\fi\fi}

%%%
%%% Begin modification -- PAO 5/26/92 15:35:05
%%%
%%% Select a default \pagewidth

\pagewidth7

%%%
%%% End modification -- PAO 5/26/92 15:35:05
%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Macros for Chapters, sections, subsections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
\newif\ifcontributors
\contributorsfalse

%
% Some books are organized with contributors rather than many authors
% Use this definition before any chapter with authors
\def\chapterauthors#1{\gdef\thechapterauthors{#1}}
\let\thechapterauthors=\relax
%% sty->cls 
%\newcounter {part}
%\newcounter {chapter}
%\newcounter {section}[chapter]
%\newcounter {subsection}[section]
%\newcounter {subsubsection}[subsection]
%\newcounter {paragraph}[subsubsection]
%\newcounter {subparagraph}[paragraph]
%% end sty->cls

%% sty->cls 
%\renewcommand \thepart {\@Roman\c@part}
%\renewcommand \thechapter {\@arabic\c@chapter}
%\renewcommand \thesection {\thechapter.\@arabic\c@section}
%\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
%\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
%\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
%\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
%\newcommand\@chapapp{\chaptername}
%% end sty->cls
%% sty->cls
%\def\thepart {\Roman{part}}
%\def\thechapter {\arabic{chapter}}
%\def\thesection {\thechapter.\arabic{section}}
%\def\thesubsection {\thesection.\arabic{subsection}}
%\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
%\def\theparagraph {\thesubsubsection.\arabic{paragraph}}
%\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}
%\def\@chapapp{Chapter}
%% end sty->cls 
\def\cleardoublepage{\clearpage%
\newpage\ifodd\count0\else\hbox{}\thispagestyle{empty}\newpage
\if@twocolumn \hbox{}\thispagestyle{empty}\newpage\fi\fi}
 
\def\part{\cleardoublepage
\if@twocolumn \onecolumn
\@tempswatrue \else \@tempswafalse \fi
% \hbox{}\vfil \bgroup \centering
\thispagestyle{empty}\secdef\@part\@spart}
 
\newif\iffirstpart
\global\firstparttrue
 
\newbox\partnumbox
\newdimen\partnumwidth
 
%
% Rather than make the toc command figure out how to space the part number
% and label, do that with this command:
\def\parttoclabel#1{{\numberline{\parttocfont#1}}}
\def\parttocname#1{{\parttocfont#1}}
%
\def\@part[#1]#2{%
%\iffirstpart\global\firstpartfalse\pagenumbering{arabic}\fi
\ifnum \c@secnumdepth >-2\relax \refstepcounter{part}%
\addcontentsline{toc}{part}{\parttoclabel{\thepart}\parttocname{#1}}%
\else \addcontentsline{toc}{part}{#1}\fi
%\markboth{}{}\thispagestyle{plain}%
\markboth{}{}\thispagestyle{empty}%
\setbox\partnumbox=\hbox{\thirtysixbold\thepart\hskip10pt}%
\partnumwidth=\wd\partnumbox
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to 5.6pc{% was 5.6pc WYN
\noindent{\box\partnumbox\vbox{\advance\hsize by-\partnumwidth
\baselineskip=13pt\chapheadfont\noindent\uppercase{#1}\vskip1sp}}%
\vfill}}\hss}}
%}}}
 
\def\@endpart{\par\vfil\newpage \if@twoside \hbox{}
\thispagestyle{empty}
\newpage \fi \if@tempswa \twocolumn \fi}
 
\def\@spart#1{\@endpart}

%% Over-ride book.cls 
\def\@makechapterhead#1{\noindent\hbox to0pt{\vbox to0pt{\vss%
\vbox to5.6pc{\noindent\thirtysixbold\thechapter %was 5.6 JBC
\hskip6pt
\vbox{\baselineskip=16pt\raggedright\hyphenpenalty10000
\hsize=.86\textwidth\chapheadfont #1}%
\ifx\thechapterauthors\relax\else
\vskip 10pt
\vbox{\emph{\thechapterauthors}}%
\fi
\vfill}}\hss}
}
 
%% Over-ride book.cls 
\def\@makeschapterhead#1{\vspace*{50pt}{\parindent 0pt\raggedright%
\Huge\bf #1\par\nobreak\vskip 40pt}}

%% sty->cls 
%\def\chapter{\cleardoublepage
%\thispagestyle{empty}
%\global\@topnum\z@
%\@afterindentfalse
%\secdef\@chapter\@schapter}
% 
%% changed pagenumbering to be arabic for any chapter, not just 
%% chapter 1. This makes life easier when printing portions of a
%% document. -- Glenn Kramer
%\def\@chapter[#1]#2{\refstepcounter{chapter}%
%\setcounter{secnumdepth}{2}%
%\ifinappendix\else
%\ifnum\c@chapter=1\global\count0=1\relax\pagestyle{headings}%
%\fi\fi%
%\ifnum\c@chapter>\z@\gdef\thepage{\@arabic{\c@page}}\fi%
%\typeout{\@chapapp\space\thechapter.}%
%\addcontentsline{toc}{chapter}{\protect%
%\chaptocfont\numberline{\thechapter}#1}%
%\chaptermark{#1}%
%\addtocontents{lof}{\protect\addvspace{10pt}}%
%\addtocontents{lot}{\protect\addvspace{10pt}}%
%\@makechapterhead{#2}}%\noindent\ignorespaces}
%
%\def\@schapter#1{%
%\if@twocolumn\@topnewpage[\@makeschapterhead{#1}]\fi}
%% end sty->cls  
%% Over-ride book.cls
\renewcommand\chapter{\ifx\@currlist\@empty
                      \else\typeout{floats at end of chapter}\fi
                    \cleardoublepage
                    \thispagestyle{empty}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
%% Override book.cls
\def\@chapter[#1]#2{%
%% -
%                   \ifnum \c@secnumdepth >\m@ne
%                       \if@mainmatter
%% - to here
                         \refstepcounter{chapter}%
%% +
                         \setcounter{secnumdepth}{2}%
                         \ifinappendix\else
                           \ifnum\c@chapter=1
                             \global\count0=1\relax\pagestyle{headings}%
                           \fi
                         \fi%
                         \ifnum\c@chapter>\z@
                            \gdef\thepage{\@arabic{\c@page}}%
                         \fi%
%% + to here
                         \typeout{\@chapapp\space\thechapter.}%
\ifx\thechapterauthors\relax
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
\else
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1%
                                    ---\protect\emph{\thechapterauthors}}%
\fi
%% -
%                       \else
%                         \addcontentsline{toc}{chapter}{#1}%
%                       \fi
%                    \else
%                      \addcontentsline{toc}{chapter}{#1}%
%                    \fi
%% - to here
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
%% mitpress.sty doesn't have @afterheading
                      \@afterheading
                    \fi
\let\thechapterauthors=\relax}

\@afterindentfalse

%% sty->cls
%% latex.ltx definition is better 
%\def\@afterheading{\global\@nobreaktrue
%      \everypar{\if@nobreak
%                   \global\@nobreakfalse
%                   \clubpenalty \@M
%                   \hskip -\parindent\else
%                   \clubpenalty \@clubpenalty
%                   \everypar{}\fi}}
%% end sty->cls 
\def\beginepigraph#1#2{%
\begingroup%
\parindent 0pt%
\tenbold#1%
\addtocontents{toc}{\vskip-5pt\hbox{\hskip\secnumwidth\eleven#1}}%
\newline%
\tenpoint#2%
\vskip 1.5pc%
\nine%
\baselineskip 11pt}
 
\def\endepigraph{%
\endgroup}

%% sty->cls 
%% @sect is defined in latex.ltx; changing it is very risky.
%% If we must, update from latex.ltx
%\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
%     \def\@svsec{}\else
%     \refstepcounter{#1}%
%     \edef\@svsec{\csname the#1\endcsname\hskip 1em}\fi
%     \@tempskipa #5\relax
%      \ifdim \@tempskipa>\z@
%        \begingroup#6\relax
%\noindent\@svsec{\interlinepenalty \@M #8\par}%
%        \endgroup
%       \csname #1mark\endcsname{#7}%
%\ifcontributors\else\addcontentsline
%         {\ifinappendix matter
%          \else\ifnum\c@chapter=0 matter
%          \else
%          toc\fi\fi}%
%          {#1}%
%          {\ifnum #2>\c@secnumdepth
%          \else
%          \protect\numberline{\csname the#1\endcsname}\fi
%          #7}\fi%
%          \else
%          \def\@svsechd{#6\hskip #3\@svsec
%                        #8\csname
%                        #1mark\endcsname
%                        {#7}%
%\ifcontributors\else\addcontentsline
%              {\ifinappendix matter
%              \else\ifnum\c@chapter=0 matter
%              \else toc\fi\fi}%
%              {#1}%
%              {\ifnum #2>\c@secnumdepth
%              \else
%              \protect\numberline{\csname the#1\endcsname}\fi
%              #7}\fi}\fi
%          \@xsect{#5}}
% 
% \@ssect is exactly the definition in latex.ltx
%\def\@ssect#1#2#3#4#5{\@tempskipa #3\relax
% \ifdim \@tempskipa>\z@%
%  \begingroup#4%\@hangfrom{\hskip #1}
%{\interlinepenalty \@M #5\par}\endgroup
%   \else \def\@svsechd{#4\hskip #1\relax #5}\fi%
%    \@xsect{#3}}
%% end sty->cls 

%%%
%%% From latex.ltx
%%% Changes are marked as
% %% +
% new tex
% %% -
% % original tex
% %% - to here
%
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
%% +
\noindent\@svsec{\interlinepenalty \@M #8\@@par}}%
%% -
%        \@hangfrom{\hskip #3\relax\@svsec}%
%          \interlinepenalty \@M #8\@@par}%
%% - to here
    \endgroup
    \csname #1mark\endcsname{#7}%
%% +
    \ifcontributors\else\addcontentsline
         {\ifinappendix matter
          \else\ifnum\c@chapter=0 matter
          \else
          toc\fi\fi}%
          {#1}{%
%% -
%    \addcontentsline{toc}{#1}{%
%% - to here
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
%% +
      \fi
%% -
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
%% +
\ifcontributors\else\addcontentsline
              {\ifinappendix matter
              \else\ifnum\c@chapter=0 matter
              \else toc\fi\fi}%
              {#1}{%
%% -
%      \addcontentsline{toc}{#1}{%
%% - to here
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}%
%% +
      \fi
%% -
       }%
  \fi
  \@xsect{#5}}
%%% end from latex.ltx

% \@startsection {NAME}{LEVEL}{INDENT}
%                {BEFORESKIP}{AFTERSKIP}{STYLE}
%
% The negative beforeskip suppresses indentatino
\def\section{\@startsection {section}{1}{\z@}%
{-16pt}{13pt}{\secheadfont}} %% \noindent}}
\def\subsection{\@startsection{subsection}{2}{\z@}%
{-7pt}{7pt}{\normalfont\bfseries}} %% \noindent}}
%%% WARNING! Using a negative afterskip can cause problems if the 
%%% (subsub)section is at the very top of the page; it can end up
%%% on the previous page, placed in the header (we have seen this) -WDG
%%% The problem might be the plus/minus in the beforeskip, since 
%%% the SIGN of beforeskip is important
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}%
{7pt}{-1em}{\normalsize\bf}}
\def\paragraph{\@startsection{paragraph}{4}{\z@}%
{3.25ex plus 1ex minus .2ex}{-1em}{\normalsize\bf}}
\def\subparagraph{\@startsection{subparagraph}{4}{\parindent}%
{3.25ex plus 1ex minus .2ex}{-1em}{\normalsize\bf}}

%% sty->cls 
%\def\chaptermark#1{}
% 
%% This is {2} in book.cls
%\setcounter{secnumdepth}{0}
%% end sty->cls 
%% It is set here to turn off numbering in the frontmatter.  It is set
%% to 2 when the first chapter is encountered
\setcounter{secnumdepth}{0}

%% This is the same as in book.cls + the inappendixtrue command
\newif\ifinappendix
\def\appendix{\inappendixtrue\par
\setcounter{chapter}{0}%
\setcounter{section}{0}%
\def\@chapapp{Appendix}%
\def\thechapter{\Alph{chapter}}}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% I don't think any of these will be used: MSC
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\leftmargini   25pt
%\leftmarginii 22pt
\leftmargini   0pt  %% PAO
%\leftmarginii  0pt
\leftmarginii  \parindent %% PAO
%\leftmarginiii 18.7pt
\leftmarginiii \parindent %% PAO
\leftmarginiv  17pt
\leftmarginv   10pt
\leftmarginvi  10pt
\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep
\labelsep 5pt
\parsep 4pt plus 2pt minus 1pt
\def\@listi{\leftmargin\leftmargini
 \topsep 7pt  % v1.52
 \itemsep 0pt plus 1pt minus 1pt}   %this makes total itemsep 16pt bb
\def\@listii{\leftmargin\leftmarginii
 \labelwidth\leftmarginii\advance\labelwidth-\labelsep
 \topsep \z@ %% v1.52 % 4pt plus 2pt minus 1pt
 \parsep 2pt plus 1pt minus 1pt
 \itemsep \parsep}
\def\@listiii{\leftmargin\leftmarginiii
 \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
 \topsep \z@ %% v1.52 % \topsep 2pt plus 1pt minus 1pt
 \parsep \z@ \partopsep 1pt plus 0pt minus 1pt
 \itemsep \topsep}
\def\@listiv{\leftmargin\leftmarginiv
 \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}
\def\@listv{\leftmargin\leftmarginv
 \labelwidth\leftmarginv\advance\labelwidth-\labelsep}
\def\@listvi{\leftmargin\leftmarginvi
 \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}
\def\labelenumi{\arabic{enumi}.}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{(\alph{enumii})}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{\roman{enumiii}.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\Alph{enumiv}.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}
\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Macros for special environments
%%% number lists, bullet lists, verse, tables, figures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% sty->cls 
%\def\verse{\let\\=\@centercr
% \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
% \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
%\let\endverse\endlist
%\def\quotation{\leftmargini25pt\leftmarginii22pt %% PAO
%\list{}{\listparindent 1.5em
% \itemindent\listparindent
% \rightmargin\leftmargin\parsep 0pt plus 1pt}\item[]}
%\let\endquotation=\endlist
%\def\quote{\leftmargini25pt\leftmarginii22pt %% PAO
%\list{}{\rightmargin\leftmargin}\item[]}
%\let\endquote=\endlist
%% end sty->cls 
%%%
%%% Begin modifications --- PAO 5/27/92 15:59:00
%%%

%%% New definitions of the flush left style of itemizations and
%%% enumerations.  Respecting the documentation of these environments,
%%% I'm prohibiting nesting.  The reason for the change is 1) to improve
%%% the interaction of these envs with the rest of LaTeX---with \label
%%% and with displayed equations, and 2) to prevent bad page appearance
%%% from the \noindent if the list ends a paragraph & section.  (An
%%% empty paragraph will be generated which can end up at the top of a
%%% page followed by the skip that precedes a section heading.)

%%% The old definitions:
% 
% \def\bulletlist{\begingroup\vskip7pt \parindent=1pc
%   \def\item{\par\noindent\hbox to 1pc{$\bullet$\hfil}}}
% \def\endbulletlist{\vskip7pt\endgroup\noindent}
%  
% \newcount\numberlistcounter \numberlistcounter=0
% \newbox\numberbox
% \def\numberlist#1{\begingroup\vskip7pt
%   \setbox\numberbox=\hbox{#1.\hskip0.5em}%
%   \numberlistcounter=0 \parindent=\wd\numberbox
%   \def\item{\advance\numberlistcounter by1
%             \par\noindent
%             \hbox to \wd\numberbox{\hfil
%             \the\numberlistcounter.\hskip0.5em}}}
% \def\endnumberlist{\vskip7pt\endgroup\noindent}

%%% The new definitions:

\newcount\@mitplistdepth\@mitplistdepth 0

%%% Set most spacings to zero.  Basically, only \topsep, \parsep, and
%%% \parindent are used.

\def\@mitplist{\ifnum\@mitplistdepth>2\relax\@toodeep
        \else\advance\@mitplistdepth\@ne\fi 
%  \topsep 7pt
  \partopsep 0pt \itemsep 0pt \parsep \parskip
%  \leftmargin 0pt \rightmargin 0pt
  \labelwidth 0pt \labelsep 0pt}

%%% bulletlist

\def\bulletlist{\list
        {\hbox to 1pc{$\bullet$\hfil}}{\@mitplist\listparindent 1pc}}
\let\endbulletlist\endlist

%%% numberlist

\newcounter{numlist}
\newbox\numberbox

\def\numberlist#1{\setbox\numberbox=\hbox{#1.\hskip0.5em}\list
        {\thenumlist.}{\@mitplist\usecounter{numlist}
                \listparindent\wd\numberbox
                \def\makelabel##1{\hbox to\wd\numberbox
                        {\hfil ##1\hskip0.5em}}}}
\let\endnumberlist\endlist

%%%
%%% End modifications --- PAO 5/27/92 15:59:00
%%% 

%% sty->cls 
%\newcounter{figure}[chapter]
%\def\thefigure{\thechapter.\@arabic\c@figure}
%\def\fps@figure{tbp}
%\def\ftype@figure{1}
%\def\ext@figure{lof}
%\def\fnum@figure{Figure \thefigure}
%\def\figure{\@float{figure}}
%\let\endfigure\end@float
%\@namedef{figure*}{\@dblfloat{figure}}
%\@namedef{endfigure*}{\end@dblfloat}
%\newcounter{table}[chapter]
%\def\thetable{\thechapter.\@arabic\c@table}
%\def\fps@table{tbp}
%\def\ftype@table{2}
%\def\ext@table{lot}
%\def\fnum@table{Table \thetable}
%\def\table{\@float{table}}
%\let\endtable\end@float
%\@namedef{table*}{\@dblfloat{table}}
%\@namedef{endtable*}{\end@dblfloat}
%% end sty->cls
 
\def\tablerule{%
\noalign{\vskip4pt}\noalign{\hrule}
\noalign{\vskip4pt}}
\def\toprule{%
\noalign{\vskip4pt}\noalign{\hrule}
\noalign{\vskip4pt}}
\def\bottomrule{%
\noalign{\vskip4pt}\noalign{\hrule}}
 
\long\def\@makecaption#1#2{%
\vskip2pt
\vtop{\hbox{\eightpoint\bf#1}%
\raggedright
\parskip=6pt\relax
\eightpoint
\hsize=\textwidth % changed from 26pc to \textwidth - gak
\vskip-6pt
\noindent#2}}
 
\def\descriptionlabel#1{\hspace\labelsep \bf #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
 \let\makelabel\descriptionlabel}}
\let\enddescription\endlist
\newdimen\descriptionmargin
\descriptionmargin=3em
 
\newif\if@restonecol

\def\titlepage{\@restonecolfalse
   \if@twocolumn\@restonecoltrue\onecolumn
   \else\newpage\fi
   \thispagestyle{empty}\c@page\z@}
 
\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}
 
\arraycolsep 5pt
\tabcolsep 6pt
\arrayrulewidth .4pt
\doublerulesep 2pt
\tabbingsep \labelsep
\skip\@mpfootins = \skip\footins
\fboxsep = 3pt
\fboxrule = .4pt

%% sty->cls 
%\def\@pnumwidth{1.55em}
%\def\@tocrmarg {2.55em}
%\def\@dotsep{4.5}
%\setcounter{tocdepth}{2}
%% end sty->cls
 
%% sty->cls
% This looks like an error in the original mitpress.sty; pagestyle headers
% is nowhere defined (used in tableofcontents)
%\def\ps@headers{\relax}
%% end sty->cls

%% sty->cls
%\def\tableofcontents{\@restonecolfalse
%\if@twocolumn\@restonecoltrue\onecolumn\fi
%\eject\pagestyle{headers}\thispagestyle{empty}%
%\vbox to0pt{\vss\vbox to 5.6pc{% was 5.6pc WYN
%\hbox{\chapheadfont Contents}\vfill}}
%\markboth{Contents}{Contents}
%\vglue-1.2pc
%\let\contentsline=\toccontentsline
%\hsizeminusfive=\hsize \advance\hsizeminusfive by-5pc
%\hsizeminussix=\hsize \advance\hsizeminussix by-6pc
%\hsizeminusseven=\hsize \advance\hsizeminusseven by-5pc
%   \advance\hsizeminusseven by-\secnumwidth
%\@starttoc{toc}
%\if@restonecol\twocolumn\fi
%\vfill\eject\markboth{}{}}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \eject\pagestyle{headings}\thispagestyle{empty}%
    \vbox to0pt{\vss\vbox to 5.6pc{% was 5.6pc WYN
    \hbox{\chapheadfont Contents}\vfill}}
    \markboth{Contents}{Contents}
%% +
    \vglue-1.2pc
    \let\contentsline=\mittoccontentsline
    \hsizeminusfive=\hsize \advance\hsizeminusfive by-5pc
    \hsizeminussix=\hsize \advance\hsizeminussix by-6pc
    \hsizeminusseven=\hsize \advance\hsizeminusseven by-5pc
    \advance\hsizeminusseven by-\secnumwidth
%% -
    %\chapter*{\contentsname
    %    \@mkboth{\contentsname}{\contentsname}}%
%% - to here
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
%% end sty->cls
 
%% sty->cls
%% Not used since contentsline redefined
%\def\l@part#1#2{\addpenalty{-\@highpenalty}%
%\addvspace{2.25em plus 1pt}\begingroup
%\@tempdima 3em \parindent \z@
%\rightskip \@pnumwidth
%\parfillskip -\@pnumwidth
%{\large \bf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
%\nobreak \endgroup}
%% end sty->cls
%% sty->cls
%% Has a slighty different form of this, but it is ROUGHLY the same 
%% But wasn't used anyway, since mitpress redefines the contentsline
%% macro.
%\def\l@chapter#1#2{\pagebreak[3]
%\vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
%\parindent \z@ \rightskip \@pnumwidth
%\parfillskip -\@pnumwidth
%\bf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}\par
%\endgroup}
%% end sty->cls
%% sty->cls
%\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
%\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
%\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
%\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%\def\listoffigures{%
%\@restonecolfalse
%\if@twocolumn\@restonecoltrue\onecolumn
%\fi
%\vbox to0pt%
%{\vss\vbox to 5.6pc% was 5.6pc WYN
%{\hbox{\chapheadfont List of Figures}\vfill}}%
%\thispagestyle{empty}%
%\vglue-22pt
%\addcontentsline{toc}{matter}{List of Figures}%
%\markboth{List of Figures}{List of Figures}%
%\thispagestyle{empty}%
%\let\contentsline=\lofcontentsline
%\@starttoc{lof}%
%\if@restonecol\twocolumn
%\fi
%\vfill\eject\markboth{}{}}
% 
%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
% 
%\def\listoftables{%
%\@restonecolfalse
%\if@twocolumn\@restonecoltrue\onecolumn
%\fi
%\vbox to0pt%
%{\vss\vbox to 5.6pc% was 5.6pc WYN
%{\hbox{\chapheadfont List of Tables}\vfill}}%
%\vglue-22pt
%\markboth{List of Tables}{List of Tables}%
%\addcontentsline{toc}{matter}{List of Tables}%
%\let\contentsline=\lofcontentsline
%\thispagestyle{empty}%
%\@starttoc{lot}\if@restonecol\twocolumn
%\fi
%\vfill\eject\markboth{}{}}
% 
%\let\l@table\l@figure
%% end sty->cls 
 
%
% MIT Press decided to change to References from Bibliography
\def\thebibliography#1{\endmatter{References}\markboth
{References}{References}\thispagestyle{empty}%
\vspace{-1.5pc}  %fudge space to move \bibitems up on first page JBC
\list
{[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
\advance\leftmargin\labelsep
\usecounter{enumi}}
\def\newblock{\hskip .11em plus .33em minus -.07em}
\sloppy
\sfcode`\.=1000\relax\eightpoint}
\let\endthebibliography=\endlist

%% sty->cls 
%\def\footnoterule{\kern-3\p@
%\hrule width .4\columnwidth
%\kern 2.6\p@}%
%\@addtoreset{footnote}{chapter}
%\long\def\@makefntext#1{\parindent 1em\noindent
%\hbox to 1.8em{\hss$^{\@thefnmark}$}#1}
%% end sty->cls 

%% sty->cls
%\setcounter{topnumber}{2}
%\def\topfraction{.7}
%\setcounter{bottomnumber}{1}
%\def\bottomfraction{.3}
%\setcounter{totalnumber}{3}
%\def\textfraction{.2}
%\def\floatpagefraction{.5}
%\setcounter{dbltopnumber}{2}
%\def\dbltopfraction{.7}
%\def\dblfloatpagefraction{.5}
%% end sty->cls
%
% MIT Press wants a minimum of more text on a page
%% sty->cls
%% With textfraction set to .3, some pages in UsingMPI cannot be set 
%% (latex2e gets too many floats)
%\def\textfraction{.3}
%% end sty->cls
%%\def\floatpagefraction{.5}
%%
%% WARNING: Latex2e won't place an oversize (in the vertical) float on a page
%% if it can't find some negative glue to stick to it.  The default section
%% definitions provide such negative glue, but the mitpress section macros
%% do not.
%%
 
\def\maketitle{\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\setcounter{page}{0}
\null
\vfil
\vskip 60pt
\begin{center}
{\LARGE \@title \par} \vskip 3em {\large \lineskip .75em
\begin{tabular}[t]{c}\@author
\end{tabular}\par}%
\vskip 1.5em {\large \@date \par}%
\end{center}\par
\@thanks
\vfil
\null
\end{titlepage}%
\setcounter{footnote}{0}%
\let\thanks\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax}
 
\mark{{}{}}
 
%\def\ps@headings{\def\@oddfoot{}\def\@evenfoot{}\def\@evenhead{\nine
%\thepage\hfil \nine \leftmark}\def\@oddhead{\hbox{}\nine \rightmark \hfil
%\nine\thepage}
%\def\chaptermark##1{\markboth {%\uppercase
%{\ifnum \c@secnumdepth
%>\m@ne \@chapapp\ \thechapter. \ \fi ##1}}{}}\def\sectionmark##1{\markright
%{\ifnum \c@secnumdepth >\z@
% \thesection. \ \fi ##1}}}% these were in \uppercase
 
%%%%%% revised headings by JBC(90) for Ashley %%%%%%
%%%%%% only chapter titles are put in head, no section titles %%%%%%
\def\ps@headings{%
\def\@oddfoot{}%
\def\@evenfoot{}%
\def\@evenhead{\nine\thepage\hfil \nine \leftmark}%
\def\@oddhead{\hbox{}\nine \rightmark \hfil\nine\thepage}%
\let\@mkboth\markboth
%% +
    \let\sectionmark\@gobble
%% + to here
\def\chaptermark##1{\markboth{%
{\ifnum \c@secnumdepth>\m@ne \@chapapp\ \thechapter \ \fi }}%
{\ifnum \c@secnumdepth>\m@ne ##1 \ \fi }}}
 
\def\ps@myheadings{\def\@oddhead{\hbox{}\nine\rightmark \hfil
\nine\thepage}\def\@oddfoot{}\def\@evenhead{\nine\thepage\hfil\nine%
\leftmark\hbox{}}%
\let\@mkboth\markboth
\def\@evenfoot{}\def\sectionmark##1{}\def\subsectionmark##1{}}

%% sty->cls 
%\def\today{\ifcase\month\or
% January\or February\or March\or April\or May\or June\or
% July\or August\or September\or October\or November\or December\fi
% \space\number\day, \number\year}
%% end sty->cls
\@addtoreset{equation}{chapter}
\def\theequation{\thesection.\arabic{equation}}
 
\ps@headings \pagenumbering{arabic} \onecolumn
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Modifications %%%%%%%%%%%%%%%
 
\parindent=1em
 
%
% Fix to title (WDG) add % to end of first line of definition 
%
% Question: The baselineskip is set to 12pt in other places.  In particular,
% at the end of loading this class file and some related files, the
% baselineskip is 12pts.  This is reset to 13 below.  Is this intended?
%
\def\title#1{\gdef\thetitle{\def\\ {\hfill\break}%
\noindent\baselineskip=14pt\twelvebold #1\vskip1sp}}
 
\def\subtitle#1{\gdef\thesubtitle{\vskip1pt%
\def\\ {\hfill\break}
\noindent\baselineskip=13pt{\eleven #1}\vskip1sp}}
%%
%% Allow a edition marker on the inside title page
\def\edition#1{\gdef\theedition{\vskip1pt%
\def\\ {\hfill\break}
\noindent\baselineskip=13pt{\eleven #1}\vskip1sp}}

 
\def\author#1{\gdef\theauthor{\noindent\baselineskip=13pt{\eleven #1}
\vskip1sp}}
 
\def\theimprint{\vtop{\parskip=0pt\parindent=0pt
{\eleven\baselineskip=13pt  %jbc was 12/14pt
%A Bradford Book
%
The MIT Press
 
Cambridge, Massachusetts
 
London, England\vskip1sp}}}
 
\gdef\thesubtitle{}
\gdef\theedition{}
 
% added \par\vss to avoid 'underfull \vbox' message -- Glenn Kramer
\def\booktitlepage{\hbox to0pt{\vbox to0pt{\vss\vbox
to 5.6pc{\boldfourteen\thetitle\par\vss}}\hss}\thispagestyle{empty}}
 
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
 
\newdimen\widestnum
\newbox\widestnumbox
\def\numberline#1{\hangindent=\secnumwidth\noindent\hbox to\secnumwidth{#1\hss}}
\def\dotfilll{\leaders\hbox to8pt{\tenpoint\hss.\hss}\hfill}
%% sty->cls
%\def\lookatpart{part}
%\def\lookatchap{chapter}
%\def\lookatsec{section}
%\def\lookatsubsec{subsection}
%\def\lookatmatter{matter}
%
%\newif\ifseespart
%\newif\ifseeschap
%\newif\ifseessec
%\newif\ifseessubsec
%\newif\ifseessubsubsec
%\newif\ifmatter
%\newif\ifthrowaway
%% end sty->cls
\newdimen\pagenumwidth
 
\def\allfalse{\global\seespartfalse
\global\seeschapfalse\global\seessecfalse
\global\seessubsecfalse\global\matterfalse
\global\throwawayfalse}
 
\xdef\pickapart#1\phspace#2{\vtop\bgroup
\noindent\hangindent=\secnumwidth
\hsize=\hsizeminusfive\baselineskip=13pt
\ \unskip\hbox to\secnumwidth{#1\hfill}%
\uppercase\bgroup}
 
\newbox\picknumbox
\xdef\picknumapart\numberline#1{%
\setbox\picknumbox=\hbox{#1\hskip1em}%
\vtop\bgroup\noindent\hangindent=\wd\picknumbox
\hsize=\hsizeminusseven\baselineskip=13pt
\ \unskip\hbox to\wd\picknumbox{#1\hfill}}
 
%%%
%%% Begin modification --- PAO 5/27/92 16:20:05
%%%
%%% There wasn't enough space between subsection lines and a following
%%% section line in the table of contents.  This ``fixes'' it.  I'm not
%%% happy with the fix, but given the structure of this, it works.  I
%%% hope it's easily changeable.
%%%
%%% Also, long section names must not be hyphenated - rather, do them 
%%% raggedright
%%%

\newif\ifwassub\wassubfalse

% force no hyphen, ragged right
\def\nohyphen{\hyphenpenalty10000\raggedright}
%% sty->cls
%% no toccontentsline use
%% \toccontentsline kind name page
%% default contentsline simply invokes l@<section> name, which has 
%% two arguments (the remaining args to the contentsline macro).
%% To make it clear that there is no LaTeX toccontentsline macro, I've
%% renamed this one mittoccontentsline
%\def\toccontentsline#1#2#3{\setbox0=\hbox{\tenpoint #3}%
%\baselineskip=13pt
%\pagenumwidth=5pc
%\global\advance\pagenumwidth by-\wd0
%\def\catch{#1}\def\keeptwo{#2}%
%\ifx\lookatpart\catch\global\seesparttrue\else
%\ifx\lookatchap\catch\global\seeschaptrue\else
%\ifx\lookatsec\catch\global\seessectrue\else
%\ifx\lookatsubsec\catch\global\seessubsectrue\else
%\ifx\lookatmatter\catch\global\mattertrue\else
%\global\throwawaytrue\fi\fi\fi\fi\fi
%\ifthrowaway\else
%%%%%%%%%%%%
%\ifseespart%
%\wassubfalse
%\vskip11pt
%\hbox to\hsize{\nohyphen%
%{\chaptocfont\expandafter\pickapart\keeptwo}%
%\tenpoint\hfill
%\hbox to-\pagenumwidth{}%
%\vrule width0pt depth6pt\egroup\egroup\hfill}% depth was 11pt jbc
%%%%%%%%%%%%%%%%%
%\else\ifseeschap
%\wassubfalse
%\vskip11pt
%\hbox to \hsize{\nohyphen%
%\vtop{\hsize=\hsizeminusfive\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}%
%}\hfill}\vskip5pt
%%%%%%%%%%%%%%%%%
%\else\ifseessec%
%\ifwassub\vskip3pt\fi
%\wassubfalse
%\hbox to\hsize{\nohyphen%
%\vtop{\hsize=\hsizeminusfive\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}\vskip3pt
%%%%%%%%%%%%%%%%%%%
%\else\ifseessubsec%
%\wassubtrue
%\setbox1=\hbox to \hsize{\baselineskip=12pt\hskip\secnumwidth
%\vtop{\nohyphen\hsize=\hsizeminusseven\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}%
%\vskip1pt%
%\box1%
%\ifdim\dp1>6pt\vskip3pt\fi
%%%%%%%%%%%%%%%%
%\else\ifmatter%
%\wassubfalse
%\vskip3pt\hbox to
%\hsize{\hskip\secnumwidth\vtop{\nohyphen\hsize=\hsizeminusseven\baselineskip=12pt
%\noindent\keeptwo\hfill%\dotfilll
%\hbox to-\pagenumwidth{}%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}%
%\fi\fi\fi\fi\fi\fi\allfalse}
%% end sty->cls

%% Replacment for contentsline processing.
%% 
%% I've changed this to use an approach closer to the original
%% version - WDG
%%
\def\l@part#1#2{%
 \wassubfalse
 \vskip11pt
 \hbox to\hsize{\nohyphen%
% {\chaptocfont\expandafter\pickapart\keeptwo}%
% Really need to find the part number and separate out the section title
% no page numbers for Parts
% Part uses two commands to set the fonts and layout.
 \vtop{\noindent#1\hfill}\hfill%
 \vrule width0pt depth6pt\hfill}% depth was 11pt jbc
}
% \def\l@part#1#2{%
%  \wassubfalse
%  \vskip11pt
%  \hbox to\hsize{\nohyphen%
%  {\chaptocfont\expandafter\pickapart\keeptwo}%
%  \tenpoint\hfill
%  \hbox to-\pagenumwidth{}%
%  \vrule width0pt depth6pt\egroup\egroup\hfill}% depth was 11pt jbc
% }
%\def\l@chapter#1#2{%
% \wassubfalse
% \vskip11pt
% \hbox to \hsize{\nohyphen%
% \vtop{\hsize=\hsizeminusfive\noindent\chaptocfont#1\hfill%
% \rlap{\hbox to5pc{\tenpoint\hfill#2}}%
% }\hfill}\vskip5pt}
\def\l@chapter#1#2{%
 \wassubfalse
 \vskip11pt
 \hbox to \hsize{\nohyphen%
 \hsize=\hsizeminusfive
 \vtop{\noindent\chaptocfont#1\hfill}\hfill%
 \hbox to 5pc{\hss\vtop{\hbox{\tenpoint#2}}%
 }\hfill}\vskip5pt}
%
% WDG - Added an additional 3pt skip when the section title takes two
% lines; parallel the subsection handling of contents lines
%
\def\l@section#1#2{%
 \ifwassub\vskip3pt\fi
 \wassubfalse
 \setbox1=\hbox to\hsize{\baselineskip=12pt\nohyphen%
 \vtop{\hsize=\hsizeminusfive\noindent#1\hfill%
 \rlap{\hbox to5pc{\tenpoint\hfill#2}}}\hfill}
 \setbox3=\copy1
 \box1
 \vskip3pt
 \ifdim\dp3>6pt\vskip5pt\fi}
%
\def\l@subsection#1#2{%
 \wassubtrue
 \setbox1=\hbox to \hsize{\baselineskip=12pt\hskip\secnumwidth
 \vtop{\nohyphen\hsize=\hsizeminusseven\noindent#1\hfill%
 \rlap{\hbox to5pc{\tenpoint\hfill#2}}}\hfill}%
 \vskip1pt%
 \box1%
 \ifdim\dp1>6pt\vskip3pt\fi}
%
\def\l@matter#1#2{%
 \wassubfalse
 \vskip3pt\hbox to
 \hsize{\hskip\secnumwidth\vtop{\nohyphen\hsize=\hsizeminusseven\baselineskip=12pt
 \noindent#1\hfill%\dotfilll
 \hbox to-\pagenumwidth{}%
 \rlap{\hbox to5pc{\tenpoint\hfill#2}}}\hfill}}
\def\l@other#1#2{\wassubfalse\relax}

%% {name}{text}{pagenumber}
%% text includes the chapter/section number (see \numberline)
\def\mittoccontentsline#1#2#3{\setbox0=\hbox{\tenpoint #3}%
\baselineskip=13pt
\pagenumwidth=5pc
\global\advance\pagenumwidth by-\wd0
%% If the name is not known, use l@other
\def\keeptwo{#2}%
\expandafter\ifx\csname l@#1\endcsname\relax\l@other{#2}{#3} %
\else \csname l@#1\endcsname{#2}{#3}\fi
}
%\def\catch{#1}\def\keeptwo{#2}%
%\ifx\lookatpart\catch\global\seesparttrue\else
%\ifx\lookatchap\catch\global\seeschaptrue\else
%\ifx\lookatsec\catch\global\seessectrue\else
%\ifx\lookatsubsec\catch\global\seessubsectrue\else
%\ifx\lookatmatter\catch\global\mattertrue\else
%\global\throwawaytrue\fi\fi\fi\fi\fi
%\ifthrowaway\else
%%%%%%%%%%%%
%\ifseespart%
%\wassubfalse
%\vskip11pt
%\hbox to\hsize{\nohyphen%
%{\chaptocfont\expandafter\pickapart\keeptwo}%
%\tenpoint\hfill
%\hbox to-\pagenumwidth{}%
%\vrule width0pt depth6pt\egroup\egroup\hfill}% depth was 11pt jbc
%%%%%%%%%%%%%%%%%
%\else\ifseeschap
%\wassubfalse
%\vskip11pt
%\hbox to \hsize{\nohyphen%
%\vtop{\hsize=\hsizeminusfive\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}%
%}\hfill}\vskip5pt
%%%%%%%%%%%%%%%%%
%\else\ifseessec%
%\ifwassub\vskip3pt\fi
%\wassubfalse
%\hbox to\hsize{\nohyphen%
%\vtop{\hsize=\hsizeminusfive\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}\vskip3pt
%%%%%%%%%%%%%%%%%%%
%\else\ifseessubsec%
%\wassubtrue
%\setbox1=\hbox to \hsize{\baselineskip=12pt\hskip\secnumwidth
%\vtop{\nohyphen\hsize=\hsizeminusseven\noindent\keeptwo\hfill%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}%
%\vskip1pt%
%\box1%
%\ifdim\dp1>6pt\vskip3pt\fi
%%%%%%%%%%%%%%%%
%\else\ifmatter%
%\wassubfalse
%\vskip3pt\hbox to
%\hsize{\hskip\secnumwidth\vtop{\nohyphen\hsize=\hsizeminusseven\baselineskip=12pt
%\noindent\keeptwo\hfill%\dotfilll
%\hbox to-\pagenumwidth{}%
%\rlap{\hbox to5pc{\tenpoint\hfill#3}}}\hfill}%
%\fi\fi\fi\fi\fi\fi\allfalse}

%%%
%%% End modification --- PAO 5/27/92 16:20:05
%%%

\def\unwrapline\numberline#1#2#3{\setbox0=\hbox{\tenpoint #3}%
\pagenumwidth=3pc
\global\advance\pagenumwidth by-\wd0
\hbox to\hsize{\hbox to0pt{#1\hss}\hskip3pc
\vtop{\baselineskip=12pt\hsize=\hsizeminussix\noindent#2\hfill%\dotfilll
\hbox to-\pagenumwidth{}%
\rlap{\hbox to3pc{\hfill#3\vrule depth3pt width0pt}}}%
\hfill}}
 
\def\lofcontentsline#1#2#3{%
\def\catch{#2}\expandafter\unwrapline\catch{#3}%
\vskip3pt}
 
%% title of series= #1
%% editor(s) of series= #2
 
%\def\seriespage#1#2{\vfill\eject\thispagestyle{empty}
%\noindent
%\hbox to0pt{\vbox to0pt{\vss\vbox to
%5.6pc{\hbox{\chapheadfont #1}%
%\vskip2pt\hbox{\eleven #2}\vfill}}\hss}\vglue-1.2pc\vskip-22pt}
 
\def\seriespage#1#2{
\vfill\eject\thispagestyle{empty}
\noindent
\hbox{\chapheadfont #1}%
\vskip0pt
\hbox{\eleven #2}
\vskip-9.5pt}
 
%
% WDG - add the struct (0 width box) at the END of the line to get the 
% proper descender (depth 3.5pt).
%
\def\entry#1#2{%
\vtop{%
\vskip13pt\vtop{\noindent
\vrule width 0pt height9.5pt depth 3.5pt
\tenit #1}%
\vtop{\noindent
\vrule width 0pt height9.5pt depth 3.5pt
\tenpoint #2\vrule width 0pt height9.5pt depth 3.5pt}}}
 
\def\frontmatter#1{\newpage\thispagestyle{empty}%
\ifodd\count0
\else \thispagestyle{empty}\hbox to\textwidth{\hfill}%
\newpage\thispagestyle{empty}\fi
\thispagestyle{empty}\pagestyle{headings}%
\markboth{#1}{#1}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to
5.6pc{\noindent\chapheadfont #1\vskip1sp\vfill}}\hss}% was 5.6pc WYN
\addcontentsline{toc}{matter}{#1}}
 
\def\endmatter#1{\newpage\thispagestyle{empty}%
\ifodd\count0
\else \thispagestyle{empty}\hbox to\textwidth{\hfill}%
\newpage\thispagestyle{empty}\fi
\thispagestyle{empty}\pagestyle{headings}%
\markboth{#1}{#1}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to
5.6pc{\noindent\chapheadfont #1\vskip1sp\vfill}}\hss}% was 5.6pc WYN
\addcontentsline{toc}{matter}{#1}}
 
% changed \boldfourteen to \elevenbold for consistency
\def\indexmatter#1{\newpage\thispagestyle{empty}%
\ifodd\count0 \else
\thispagestyle{empty}\hbox to\textwidth{\hfill}\newpage
\thispagestyle{empty}\fi
\thispagestyle{empty}\pagestyle{headings}%
\markboth{#1}{#1}%
\noindent\hbox to0pt{\vbox to0pt{\vss\vbox to 5.6pc% was 5.6pc WYN
{\noindent\hskip-16pt
\chapheadfont #1\vskip1sp\vfill}}\hss}%
\addcontentsline{toc}{matter}{#1}}
%JBC fudged endmatter for index by excising noindent
 
\newenvironment{extract}{\bgroup
\baselineskip=11pt\vskip9pt %was 7pt JBC
\nine\noindent\ignorespaces}{\vskip7pt\egroup}
 
\def\ltheorem{Theorem}
\def\lcorol{Corollary}
\def\lprop{Proposition}
\def\llemma{Lemma}
\def\lremark{Remark}
\def\xlproof{Proof}
 
\def\changetheoremfont{\ifx\lookattheorem\ltheorem\sc\else
\ifx\lookattheorem\lcorol\sc\else
\ifx\lookattheorem\lprop\sc\else
\ifx\lookattheorem\llemma\sc\else
\ifx\lookattheorem\lremark\it\else
\ifx\lookattheorem\xlproof\it\else\bf\fi\fi\fi\fi\fi\fi}
 
\def\@begintheorem#1#2{\def\lookattheorem{#1}\trivlist
\item[\hskip5pt\changetheoremfont #1\ #2]} 

% Glenn Kramer
% added \def\lookattheorem{#1} and removed spurious linefeed
\def\@opargbegintheorem#1#2#3{\def\lookattheorem{#1}\trivlist
\item[\hskip5pt\changetheoremfont#1\ #2\ (#3)]} 
\def\@endtheorem{\endtrivlist}
 
\newtheorem{theorem}{Theorem}
\newtheorem{prop}{Proposition}
\newtheorem{corol}{Corollary}
\newtheorem{lemma}{Lemma}
\newtheorem{remark}{Remark}
\newtheorem{proof}{Proof}
 
% \def\sptabular{tabular}
% \def\sptabularx{tabular*}
% \def\sptabbing{tabbing}
 
\long\def\tablenotes#1{\vskip5pt\hbox{\vbox{\eightpoint
\baselineskip=9pt \parindent=0pt \parskip=3pt
\noindent #1\vskip1sp}}}
 
\def\bibliography#1{%
\if@filesw\immediate\write\@auxout{\string\bibdata{#1}}\fi
%\eightpoint % Glenn Kramer (this was not needed, and besides, it was
%not in a group, so it affected all subsequent text.
\@input{\jobname.bbl}}
 
\itemindent=0pt
\rightmargin=0pt
\leftmargin=0pt
\labelwidth=1em
\baselineskip=13pt
\pagestyle{headings}
\pagenumbering{roman}

%%%% output routine
 
%%%
%%% Begin Modification --- PAO 5/27/92 16:10:48
%%%
%%% I separated out the guide corners from the \@outputpage macro
%%% itself.  Whoever put them in separated the \moveright\@themargin
%%% from the page body.  The \moveright primitive takes a dimen and a
%%% box, both!  Since \@themargin was always zero, there wasn't a
%%% problem.  With the margin movies, however, \@themargin becomes
%%% non-zero.

%%
%% Occasionally, a \leftskip would be added to the rules, depending
%% on exactly what was happening when the output routine was invoked.
%% This would generate Overfull \hbox messages
%% I set the various skips to 0pt to fix this. -- WDG 12/27/98
%%

%%
%% Another problem: Sometimes, an item from the current vertical mode list
%% will become attached to the top of the ``@mitpcorners''.  This seems to
%% happen only text in \item commands, which, unfortunately, occur very often 
%% in the MPI books (the example and funcdef environments use lists and items)
\def\@mitpcorners{%
\vbox to0pt{\vss\hbox to
\textwidth{\llap{\hbox to4.95pc{\vbox to0pt{\vss
\parskip=0pt\parindent=0pt\leftskip=0pt\rightskip=0pt   %%% WDG
\hbox{\vrule depth 3pc}\vskip-3pc
\hrule width 3pc\vskip 3pc}\hfill}}%
\hfill
\rlap{\hbox to 4.95pc{%
\parskip=0pt\parindent=0pt\leftskip=0pt\rightskip=0pt   %%% WDG
\vbox to 0pt{\vss\hsize=4.95pc\noindent
\hskip1.95pc\vbox{\hsize=3pc
\parskip=0pt\parindent=0pt\leftskip=0pt
\rightskip=0pt\hrule\vskip-1sp
\hfill\hbox{\vrule height3pc}}}}}}}}%

%
% Updated this with a few robustness definitions; see latex.tex
% WDG - 3/27/98
%
%% Note: Try to get by without this.  If necessary, update from latex.ltx
%% sty->cls.  The latex.ltx @outputpage is very similar, except for being
%% more careful to turn off things like label, and a vskip\headsep instead
%% of the -2pt (and of couse the mitpcorners).
%\def\@outputpage{\begingroup\catcode`\ =10 \if@specialpage
%     \global\@specialpagefalse\@nameuse{ps@\@specialstyle}\fi
%     \if@twoside
%       \ifodd\count\z@
%            \let\@thehead\@oddhead
%            \let\@thefoot\@oddfoot
%            \let\@themargin\oddsidemargin
%          \else
%            \let\@thehead\@evenhead
%            \let\@thefoot\@evenfoot
%            \let\@themargin\evensidemargin
%     \fi\fi
%     \shipout
%     \vbox{\normalsize \baselineskip\z@ \lineskip\z@
%           \let\par\@@par %% 15 Sep 87 in latex.tex
%           \vskip \topmargin
%      % @mitpcorners can cause some of the LaTeX macros to fail, placing
%      % text items outside of the page.  If @mitpcorners is commented out, the
%      % problem vanishes.  No solution known. 
%      % For final version, comment on the next line
%      %\@mitpcorners\nobreak
%      %\moveright<amount><box>
%      \moveright\@themargin
%      \vbox{\setbox\@tempboxa
%      \vbox to5pc{\hbox to\textwidth{\let\label\@gobble \let\index\@gobble
%                                     \@thehead}\vfill}% See latex.tex
%      \dp\@tempboxa\z@
%      \box\@tempboxa
%      \vskip-2pt% \headsep
%      \box\@outputbox
%      \baselineskip\footskip
%      \hbox to\textwidth{\let\label\@gobble 
%                           \let\index\@gobble  %% 22 Feb 87
%                           \@thefoot}}}\global\@colht\textheight
%\endgroup\stepcounter{page}\let\firstmark\botmark}
%% end sty->cls 
%%%
%%% End Modification --- PAO 5/27/92 16:10:48
%%%
%% From latex.ltx
%% The modifications are marked + -
\def\@outputpage{%
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \@parboxrestore
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \normalsfcodes
  \let\label\@gobble
  \let\index\@gobble
  \let\glossary\@gobble
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@
    \@begindvi
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
%% -
%        \vfil
%% - to here
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth{\@thehead}%
        \color@endbox
%% +
         \vss
%% + to here
        }%                        %% 22 Feb 87
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{\@thefoot}%
      \color@endbox
      }%
    }%
  \global \@colht \textheight
  \stepcounter{page}%
  \let\firstmark\botmark
}

\hoffset=5pc

%% Glenn Kramer: the indexing macros do not belong here, so I am
%% putting them in another file: mitpress-index.sty

%\input{mitpress-index.sty}

%% sty->cls
%\mainmatter
%\pagenumbering{roman}
%% end sty->cls

%%
%% This is file `aes.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% aes.dtx 
%% 
%%  Copyright (c) 2001--2004, 2007, 2008, 2010--2012 by Adam H. Lewenberg
%%  All rights reserved
%% 
%% Author: Adam H. Lewenberg
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifx\AESconname\undefined
  \errmessage{This class is not meant to be used directly. Please use
  a different class for the argument of \string\documentclass}%
\fi
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\tracingstats=1
\ProvidesClass{aes}
         [2012/08/11 v0.65 AES convention paper style]
\newif\ifAES@draft@mode\global\AES@draft@modefalse
\DeclareOption{draft}{%
  \global\AES@draft@modetrue
  \PassOptionsToPackage{draft}{graphicx}%
  \overfullrule=2pt%
}%
\DeclareOption{hyperref}{%
  \relax
}%
\newif\ifaespdfcheck
\aespdfcheckfalse % Default value is no pdf output
\ifx\pdfoutput\undefined
  \aespdfcheckfalse          % pdflatex not running
\else
  \ifnum\pdfoutput=1 % pdflatex running; pdf output?
    \aespdfchecktrue         % Yes, pdf output
  \fi
\fi
\newif\ifAES@boiler@plate\global\AES@boiler@platetrue
\DeclareOption{noboilerplate}{%
  \global\AES@boiler@platefalse
}%
\newif\ifAES@peer@reviewed\global\AES@peer@reviewedfalse
\DeclareOption{peer-reviewed}{%
  \global\AES@peer@reviewedtrue
}%
\DeclareOption{non-peer-reviewed}{%
  \global\AES@peer@reviewedfalse
}%
\newif\ifAES@using@@cm@fonts\global\AES@using@@cm@fontstrue
\DeclareOption{mathptmx}{%
  \global\AES@using@@cm@fontsfalse
  \AtEndOfPackage{%
    \RequirePackage{mathptmx}
    \RequirePackage{helvet}
  }%
}%
%% \DescribeMacro{mathtime}
\DeclareOption{mathtime}{%
  \global\AES@using@@cm@fontsfalse
  \AtEndOfPackage{%
    \RequirePackage{mathtime}
    \renewcommand{\ttdefault}{cmtt}%
  }%
}%
%% \DescribeMacro{caption}
\newif\ifAES@use@caption@package\global\AES@use@caption@packagefalse
\DeclareOption{caption}{%
  \global\AES@use@caption@packagetrue
  \AtEndOfPackage{%
    \RequirePackage[labelfont={bf}]{caption}
  }%
}%
\ProcessOptions
\newif\ifAES@@Conference\AES@@Conferencefalse
\newif\ifAES@@Convention\AES@@Conventionfalse
  \def\temp@@decided{X}%
\def\temp@@decided{}%
\def\temp@@{Conference}%
\ifx\temp@@\AEScontype
  \global\AES@@Conferencetrue
  \global\AES@@Conventionfalse
  \message{...this is a Conference...}%
  \def\temp@@decided{X}%
\fi
\def\temp@@{Convention}%
\ifx\temp@@\AEScontype
  \global\AES@@Conferencefalse
  \global\AES@@Conventiontrue
  \message{...this is a Convention...}%
  \def\temp@@decided{X}%
\fi
\ifx\temp@@decided\empty
  \errmessage{The macro \string\AEScontype\space is currently defined
as '\AEScontype'. However, the only valid values it can be defined to be
are 'Convention' or 'Conference' (case matters). Please fix}
\fi
\let\temp@@decided\undefined
\LoadClass[twocolumn,notitlepage,oneside,10pt]{report}
\ifaespdfcheck
  \RequirePackage[pdftex]{graphicx}%
  \DeclareGraphicsExtensions{.pdf}%
  \pdfcompresslevel=9\relax
\else
  \RequirePackage{graphicx}%
  \DeclareGraphicsExtensions{.eps}%
\fi
\RequirePackage[normalem]{ulem}%
\textwidth=6.5in
\textheight=49pc
\headsep=0.375in
\headheight=14pt
\footskip=\headsep\advance\footskip by 0.375in\relax
\columnsep=0.25in
\topmargin=0in
\oddsidemargin=-0.0in
\parskip=6pt plus3.0pt minus3.0pt\relax
\parindent=0pt\relax
\voffset=-0.0in

\def\title#1{\gdef\@title{#1}}
\def\email#1{\gdef\@email{#1}}
\let\authors\author
\def\shorttitle#1{%
  \gdef\@shorttitle{#1}%
}%
\let\@shorttitle\undefined
\let\@lastnames\undefined
\def\aff#1{${}^{#1}$}%
\newcommand{\correspondence}[2]{%
  \gdef\corr@author{#1}%
  \gdef\corr@email{#2}%
}%

\newcounter{lastnamecount}%
\def\lastnames#1{\gdef\@lastnames{#1}}%
\let\lastname\lastnames%
\let\@lastnames\undefined

\newcounter{affiliationcount}%
\def\affiliation@in@title{}%
\newcommand{\affiliation}[2][\the\c@affiliationcount]{%
  \global\advance\c@affiliationcount by 1\relax
  \xdef\affiliation@in@title{%
    \affiliation@in@title
    \par
    ${}^{#1}$#2}%
}%
\def\preprintnumber#1{\gdef\@preprintnumber{#1}}%
\let\@preprintnumber\undefined

\def\lastpage@putlabel{\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string
   \newlabel{aesxx:lastpage}{{}{\thepage}}}%
   \addtocounter{page}{1}}
\def\BeginAESPaper{%
  \ifx\@lastnames\undefined
    \errmessage{You must have a \string\lastnames\space command before
    starting the document}
  \fi
  \author@parse@aes % Parse the \lastnames.
  \renewenvironment{abstract}{%
    \errmessage{The abstract environment can ONLY be used in the
    preamble, that is, before the begin document command.}}{}%
  \ifx\@shorttitle\undefined
    \global\let\@shorttitle\@title
  \fi
}%
\global\let\StartAESPaper\BeginAESPaper
\def\EndAESPaper{%
  \relax
  \clearpage% Important in case of figure-only page at end of document.
  \lastpage@putlabel
  \ifx\aes@maketitle@called\relax
  \else
    \errmessage{You did not use the mandatory \string\maketitle\space %
    command; your paper CANNOT be accepted without using this
    command. Please see the AES LaTeX class manual for more information}%
  \fi
}%
\AtBeginDocument{\BeginAESPaper}%
\AtEndDocument{\EndAESPaper}%
\newbox\abstract@@box%
\newbox\abstract@box%
\renewenvironment{abstract}%
{%
 \begin{lrbox}{\abstract@@box}
   \begin{minipage}{\textwidth}%
     \textbf{ABSTRACT}\\
     \normalsize
     \ignorespaces
}{%
   \end{minipage}
 \end{lrbox}
 \global\setbox\abstract@box=\vtop{\copy\abstract@@box}%
 \ignorespaces
}%
\newcommand{\SetAbstract}{%
  \noindent
  \box\abstract@box%
  \smallskip
}%

\newcounter{authorcount}%
\def\author@parse@aes{
  \setcounter{authorcount}{0}%
  \for\name:=\@lastnames\do{%
    \message{\name}%
    \stepcounter{authorcount}%
  }%
  \ifnum\c@authorcount=1
    \xdef\author@in@header{\@lastnames}%
  \fi
  %
  \ifnum\c@authorcount=2
    \count255=0
    \for\name:=\@lastnames\do{%
      \ifnum\count255=0
        \xdef\@lastnameone{\name}%
      \else
        \xdef\@lastnametwo{\ignorespaces\name}%
      \fi
      \advance\count255 by 1\relax
    }%
    \xdef\author@in@header{\@lastnameone\ AND \@lastnametwo}%
  \fi
  %
  \ifnum\c@authorcount>2
    \count255=0
    \for\name:=\@lastnames\do{%
      \ifnum\count255=0
       \xdef\author@in@header{\name\ et al.}%
      \fi
      \advance\count255 by 1\relax
    }%
  \fi
}

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
  \global\let\@nodocument\relax
  \if@twocolumn
    \ifnum \col@number=\@ne
      \@maketitle
      \usebox{\@AES@title@@box}%
    \else
      \@maketitle
      \twocolumn[\vspace{-3pc}\box\@AES@title@@box%
                 \vskip 2pc plus 1pc minus1pc\relax
                ]%
    \fi
  \else
    \newpage
    \global\@topnum\z@   % Prevents figures from going at top of page.
    \@maketitle
  \fi
  \ifAES@@Convention
    \thispagestyle{empty}%
  \else
    \thispagestyle{footeronly}%
  \fi
  \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  %\global\let\@author\@empty
  \global\let\@date\@empty
  %\global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \global\let\aes@maketitle@called\relax
}
\ifAES@using@@cm@fonts
  \DeclareFontShape{OT1}{cmss}{m}{n}
       {%
        <5-8>cmss8%
        <9>cmss9%
        <10-10.95>cmss10%
        <10.95-14.4>cmss12%
        <14.4-100>cmss17%
       }{}
  \DeclareFontShape{OT1}{cmss}{bx}{n}
       {%
        <5-100>cmssbx10%
       }{}
  \DeclareFontShape{OT1}{cmr}{m}{n}%
       {<5><6><7><8><9><10><12>gen*cmr%
        <10.95>cmr10%
        <14.4>cmr12%
        <17.28><20.74><22><24.88><40>cmr17}{}
\fi
\def\AESfont@Hone{\fontsize{18}{20pt}\selectfont}
\def\AESfont@Htwo{\fontsize{36}{38pt}\selectfont}
\def\AESfont@Hthree{\fontsize{10}{11pt}\selectfont}
\def\AESfont@papertitle{\fontsize{22}{24pt}\selectfont\sffamily\bfseries}
\def\AESfont@author{\fontsize{10}{12pt}\selectfont}
\def\AESfont@affiliation{\fontsize{9}{11pt}\selectfont\itshape}
\def\AESfont@boilerplate{\fontsize{9}{10pt}\selectfont\itshape}
\def\AESfont@rhead{\fontsize{10}{10pt}\selectfont\sffamily}
\def\AESfont@footer{\fontsize{10}{10pt}\selectfont\sffamily}
\def\set@AESconventionheader{%
  \bgroup
    \parindent=0pt
    \rule{\textwidth}{2pt}%
    \vskip 0pc%
    \setbox0=\hbox{\includegraphics[width=20mm]{aeslogo}}%
    \wd0=0pt\dp0=0pt\ht0=0pt\leavevmode\lower 23mm\hbox{\box0}%
    \vglue-32mm\vglue0.00mm\par
    \begin{center}
      \sffamily
      \AESfont@Hone Audio Engineering Society\\
      \ifx\@preprintnumber\undefined
        \AESfont@Htwo\AEScontype\ Paper\\
      \else
        \AESfont@Htwo\AEScontype\ Paper \@preprintnumber\\
      \fi
      \vskip2.5mm\relax
      \AESfont@Hthree Presented at the \AESconname\\
      \AEScondate\quad \AESconplace\\
    \end{center}
    \vglue-10mm\vglue0.01mm\par
    \ifAES@boiler@plate
      \vskip 8.4mm%
      \par
      \parbox[t]{\textwidth}{%
        \AESfont@boilerplate
\noindent
        \ifAES@peer@reviewed
  This paper was peer-reviewed as a complete manuscript for
  presentation at this Convention. Additional papers may be
  obtained by sending request and remittance to Audio
  Engineering Society, 60 East 42${}^{\mbox{\scriptsize nd}}$
          Street, New York, New York
  10165-2520, USA; also see \uline{www.aes.org}. All rights reserved.
  Reproduction of this paper, or any portion thereof, is not
  permitted without direct permission from the \textup{Journal of the
  Audio Engineering Society}.
        \else
  This Convention paper was selected based on a submitted
  abstract and 750-word precis that have been peer reviewed by
  at least two qualified anonymous reviewers. The complete
  manuscript was not peer reviewed. This convention paper has
  been reproduced from the author's advance manuscript without
  editing, corrections, or consideration by the Review
  Board. The AES takes no responsibility for the
  contents. Additional papers may be obtained by sending
  request and remittance to Audio Engineering Society, 60 East
  42${}^{\mbox{\scriptsize nd}}$
          Street, New York, New York 10165-2520, USA; also see
  \uline{www.aes.org}. All rights reserved. Reproduction of this
  paper, or any portion thereof, is not permitted without
  direct permission from the \textup{Journal of the Audio
  Engineering Society}.
        \fi
      }% end of \parbox
      %
      \par
      \vskip 0.0mm%
    \fi
    \rule{\textwidth}{2pt}%
    \par
  \egroup
}
\newsavebox{\@AES@title@@box}%
\def\@maketitle{%
  \setbox\@AES@title@@box=\vtop%
  {%
    \hsize=\textwidth
    \vskip 0pc%
    \ifAES@@Convention
      \set@AESconventionheader
    \fi
    \begin{flushleft}%
      \hsize=\textwidth
      \let \footnote \thanks
      {\AESfont@papertitle\@title\par}%
      \vskip 1.5em%
      {\large
      \lineskip .5em%
        {\AESfont@author\@author\par}%
      \par%
      {\AESfont@affiliation\affiliation@in@title\par}%
      }%
      Correspondence should be addressed to \corr@author\space
      (\texttt{\corr@email})\par
      \vskip 1.0em plus 0.25em minus 0.25em\relax
    \end{flushleft}%
    \par
    \vskip 0.00em plus 0.00em minus0.00em\relax
    \SetAbstract
  }% end of \setbox\@AES@title@@box
}%

\setcounter{secnumdepth}{3}%
\renewcommand{\thesection}{\arabic{section}}%
\renewcommand{\section}{\secdef\@aes@section\@aes@starred@section}%
\def\@aes@section[#1]#2{%
  \refstepcounter{section}%
  \set@aes@section{#1}{#2}{\thesection}%
  \ignorespaces
}%
\def\@aes@starred@section#1{%
  \set@aes@section{}{#1}{}%
  \ignorespaces
}%
\def\set@aes@section#1#2#3{%
  \bigskip\par
  \bgroup
    \parskip=0pt%
    \noindent
    \ifnum\c@secnumdepth>0
      \def\temp@{#3}%
      \ifx\temp@\empty
\relax
      \else
\textbf{\textsf{#3}}.\quad%
      \fi
    \fi
    \textsf{\textbf{\uppercase{#2}}}%
    \nobreak
    \par
    \nobreak
    \noindent
  \egroup
  \ignorespaces
}
\renewcommand{\subsection}{\secdef\@aes@subsection\@aes@starred@subsection}%
\def\@aes@subsection[#1]#2{%
  \refstepcounter{subsection}%
  \set@aes@subsection{#1}{#2}{\thesubsection}%
  \ignorespaces
}%
\def\@aes@starred@subsection#1{%
  \set@aes@subsection{}{#1}{}%
  \ignorespaces
}%
\def\set@aes@subsection#1#2#3{%
  \medskip\par
  \bgroup
    \parskip=0pt%
    \noindent
    \ifnum\c@secnumdepth>1
      \def\temp@{#3}%
      \ifx\temp@\empty
\relax
      \else
\textbf{\textsf{#3}}.\quad%
      \fi
    \fi
    \textbf{\textsf{#2}}%
    \nobreak
    \par
    \nobreak
    \noindent
  \egroup
  \ignorespaces
}
\renewcommand{\subsubsection}%
             {\secdef\@aes@subsubsection\@aes@starred@subsubsection}%
\def\@aes@subsubsection[#1]#2{%
  \refstepcounter{subsubsection}%
  \set@aes@subsubsection{#1}{#2}{\thesubsubsection}%
  \ignorespaces
}%
\def\@aes@starred@subsubsection#1{%
  \set@aes@subsubsection{}{#1}{}%
  \ignorespaces
}%
\def\set@aes@subsubsection#1#2#3{%
  \medskip\par
  \bgroup
    \parskip=0pt%
    \noindent
    \ifnum\c@secnumdepth>2
      \def\temp@{#3}%
      \ifx\temp@\empty
\relax
      \else
\textbf{\textsf{#3}}.\quad%
      \fi
    \fi
    \textbf{\textsf{#2}}%
    \nobreak
    \par
    \nobreak
    \noindent
  \egroup
  \ignorespaces
}
\newcommand{\stack@aesfooter}[2]{%
  \vbox{%
    \hsize=\textwidth
    \offinterlineskip
    \parskip=0pt\parindent=0pt
    \rule{\textwidth}{2pt}%
    \par\vskip2pt\vfill
    \hbox to \textwidth{\hfill#1\hfill}\par\vskip0.5pc\vfill
    \hbox to \textwidth{\hfill#2\hfill}%
    \par
  }%
}
\newcommand{\stack@aesheader}[2]{%
  \vbox{%
    \hsize=\textwidth
    \offinterlineskip
    \parskip=0pt\parindent=0pt
    \hbox to \textwidth{#1\hfill#2}\par\vskip2pt\vfill
    \rule{\textwidth}{2pt}%
    \par
  }%
}
\def\ps@headings{%
\def\@mkboth{\protect\markboth}%
\def\@oddhead{%
  \bgroup
    \AESfont@rhead
    \stack@aesheader{\author@in@header}{\@shorttitle}%
  \egroup
}%
\def\@oddfoot{%
  \bgroup
    \AESfont@rhead
    \stack@aesfooter{\AESconRHname, \AESconRHplace, \AESconRHdate}%
                    {Page \the\c@page\ of \pageref{aesxx:lastpage}}%
  \egroup
}%
\let\@evenhead\@oddhead%
\let\@evenfoot\@oddfoot
}%
\def\ps@footeronly{%
\def\@mkboth{\protect\markboth}%
\def\@oddhead{\hfil}%
\def\@oddfoot{%
 \stack@aesfooter{\AESconRHname, \AESconRHplace, \AESconRHdate}{\the\c@page}%
  }%
\let\@evenhead\@oddhead%
\let\@evenfoot\@oddfoot%
}%
\pagestyle{headings}
\renewenvironment{thebibliography}[1]
     {
      %\section{\bibname
      %  \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \medskip
      \section{References}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}
            %
            \topsep=0pt\partopsep=0pt
            \@beginparpenalty=10000\relax%
           }%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\let\for = \@for
\def\@for#1:=#2\do#3{%
   \edef\@fortmp{#2}%
   \ifx\@fortmp\empty \else
      \expandafter\@forloop#2,\@nil,\@nil\@@#1{#3}%
   \fi
}%
\def\@forloop#1,#2,#3\@@#4#5{\def#4{#1}\ifx #4\@nnil \else
       #5\def#4{#2}\ifx #4\@nnil \else#5\@iforloop #3\@@#4{#5}\fi\fi
}%
\def\@iforloop#1,#2\@@#3#4{\def#3{#1}\ifx #3\@nnil
       \let\@nextwhile=\@fornoop \else
      #4\relax\let\@nextwhile=\@iforloop\fi\@nextwhile#2\@@#3{#4}%
}%
\def\figurename{Fig.}
\ifAES@use@caption@package
\else
  \renewcommand{\caption}[1][]{%
     \ifx\@captype\@undefined
       \@latex@error{\noexpand\caption outside float}\@ehd
       \expandafter\@gobble
     \else
       \def\temp@{#1}%
       \ifx\temp@\empty
         \refstepcounter\@captype
       \else
         \setcounter\@captype{#1}%
         \addtocounter\@captype{-1}%
         \refstepcounter\@captype
       \fi
       \expandafter\@firstofone
     \fi
     {\@dblarg{\@caption\@captype}}%
  }
\fi
\ifAES@use@caption@package
\else
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\textbf{#1:} #2}%
  \ifdim \wd\@tempboxa >\hsize
    \textbf{#1:} #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\fi

\endinput
%%
%% End of file `aes.cls'.

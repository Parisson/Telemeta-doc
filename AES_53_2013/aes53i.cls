% This is aes53i.cls for the AES 53rd International Conference
% A skeleton class to load the main class aes.cls
\ProvidesClass{aes53i}
         [2002/02/04 v0.01 AES 53rd International Conference paper class]
% AES 53rd International Conference, London, UK, January 27--29, 2014
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aes}}
\ProcessOptions
\def\AEScontype{Conference}%
\def\AESconname{53rd International \AEScontype}%
\def\AEScondate{2014 January 27--29}%
\def\AESconplace{London, UK}%
\def\AESconRHname{AES 53${}^{\mbox{\scriptsize RD}}$ INTERNATIONAL CONFERENCE}%
\def\AESconRHdate{2014 January 27--29}%
\def\AESconRHplace{London, UK}%
\LoadClass[mathptmx]{aes}[2006/04/02]
\endinput


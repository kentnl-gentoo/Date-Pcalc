                     =====================================
                       Package "Date::Pcalc" Version 1.0
                     =====================================

This package is available for download from this website:

   http://catcode.com/date/pcalc.html

It is based on the Date::Calc package by Steffen Beyer.
The entire source of the original is available via download from:

If you want the original from the very source, download it at:

  http://www.engelschall.com/u/sb/download/

or from any CPAN (= "Comprehensive Perl Archive Network") mirror server:

  http://www.perl.com/CPAN/authors/id/STBEY/

Legal issues:
-------------

This package is
Copyright (c) 1999-2000 J. David Eisenberg, with parts
Copyright (c) 1993-2000 by Steffen Beyer.
All rights reserved.

This package is free software; you can redistribute it and/or
modify it under the same terms as Perl itself, i.e., under the
terms of the "Artistic License" or the "GNU General Public License".

The C library at the core of the original Perl module can additionally
be redistributed and/or modified under the terms of the
"GNU Library General Public License".

Please refer to the files "Artistic.txt", "GNU_GPL.txt" and
"GNU_LGPL.txt" in this distribution for details!


Prerequisites:
--------------

Perl version 5.000 or higher.


Installation:
-------------

Please see the file "INSTALL.txt" in this distribution for instructions
on how to install this package.


Adding more languages:
----------------------

Please see the corresponding section in the file "INSTALL.txt" in this
distribution for detailed instructions on how to add other languages.


Changes over previous versions:
-------------------------------

Please refer to the file "CHANGES.txt" in this distribution for a detailed
version history and instructions on how to upgrade existing applications.


Documentation:
--------------

The documentation to this package is included in POD format (= "Plain Old
Documentation") in the file "Pcalc.pm" in this distribution, the human-
readable markup-language standard for Perl documentation.

By building this package, this documentation will automatically be converted
into a man page, which will automatically be installed in your Perl tree for
further reference in this process, where it can be accessed via the command
"man Date::Pcalc" (UNIX) or "perldoc Date::Pcalc" (UNIX and Win32).

If Perl is not available on your system, you can also read this documentation
directly.


What does it do:
----------------

This package consists of a Perl module for all kinds of date calculations based
on the Gregorian calendar (the one used in all western countries today),
thereby complying with all relevant norms and standards: ISO/R 2015-1971,
DIN 1355 and, to some extent, ISO 8601 (where applicable).

(See also http://www.engelschall.com/u/sb/download/Date-Calc/DIN1355/
for a scan of part of the "DIN 1355" document (in German)).

The module of course handles year numbers of 2000 and above correctly
("Year 2000" or "Y2K" compliance) -- actually all year numbers from 1
to the largest positive integer representable on your system (which
is at least 32767) can be dealt with.

Note that this package projects the Gregorian calendar back until the
year 1 A.D. -- even though the Gregorian calendar was only adopted
in 1582 by most (not all) European countries, in obedience to the
corresponding decree of Catholic Pope Gregor I in that year.

Some (mainly Protestant) countries continued to use the Julian calendar
(used until then) until as late as the beginning of the 20th century.

Finally, note that this package is not intended to do everything you could
ever imagine automagically for you; it is rather intended to serve as a
toolbox (in the best of UNIX spirit and traditions) which should, however,
always get you where you want to go.

See the section "RECIPES" at the end of the manual page for solutions
to common problems!

If nevertheless you can't figure out how to solve a particular problem,
please let me know! (See e-mail address at the bottom of this document.)


Example applications:
---------------------

Please refer to the file "EXAMPLES.txt" in this distribution for details
about the example applications in the "examples" subdirectory.


Credits:
--------

Please refer to the file "CREDITS.txt" in this distribution for a list
of contributors.


Author's note:
--------------
If you find any errors in the module or find a way to improve it,
please tell me. My email is:

   david@catcode.com

and my website is:

   http://catcode.com/


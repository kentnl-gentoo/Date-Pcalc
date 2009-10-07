#!perl -w

###############################################################################
##                                                                           ##
##    Copyright (c) 1995 - 2009 by Steffen Beyer.                            ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    This package is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl itself.                  ##
##                                                                           ##
###############################################################################

use strict;

use ExtUtils::MakeMaker;

use Config;

WriteMakefile(
    'NAME'              => 'Date::Pcalc',
    'VERSION_FROM'      => 'Pcalc.pm',
    'PREREQ_PM'         =>
                              {
                                  'Carp::Clan'  => 5.3,
                                  'Bit::Vector' => 7.0
                              },
#   ($] >= 5.005 ?
#       ('ABSTRACT'     => 'Gregorian calendar date calculations',
#        'AUTHOR'       => 'Steffen Beyer <STBEY@cpan.org>') : ()),
#   ($] >= 5.005 && $^O eq 'MSWin32' && $Config{archname} =~ /-object\b/i ?
#       ('CAPI'         => 'TRUE') : ()),
    'dist'              => { COMPRESS => "gzip -9", SUFFIX => "gz" }
);

__END__


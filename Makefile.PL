
use ExtUtils::MakeMaker;

use Config;

WriteMakefile(
    'NAME'              => 'Date::Pcalc',
    'VERSION_FROM'      => 'Pcalc.pm',
#   ($] >= 5.005 ?
#       ('ABSTRACT'     => 'Gregorian calendar date calculations',
#        'AUTHOR'       => 'J. David Eisenberg (david@catcode.com)') : ()),
#   ($] >= 5.005 && $^O eq 'MSWin32' && $Config{archname} =~ /-object\b/i ?
#       ('CAPI'         => 'TRUE') : ()),
    'dist'              => { COMPRESS => "gzip -9", SUFFIX => "gz" }
);


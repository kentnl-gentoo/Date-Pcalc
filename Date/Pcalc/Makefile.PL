use ExtUtils::MakeMaker;

use Config;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'Date::Pcalc',
    'VERSION_FROM' => 'Pcalc.pm', # finds $VERSION
#   ($] >= 5.005 ?
#       ('ABSTRACT'     => 'Gregorian calendar date calculations',
#        'AUTHOR'       => 'J. David Eisenberg (david@catcode.com)') : ()),
#   ($] >= 5.005 && $ eq 'MSWin32' && $Config{archname} =~ /-object\b/i ?
#       ('CAPI'         => 'TRUE') : ()),
    'dist'              => { COMPRESS => "gzip -9", SUFFIX => "gz" }
);

#!perl

###############################################################################
##                                                                           ##
##    Copyright (c) 1998 by Steffen Beyer.                                   ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    Modified 4-Aug-1999 by J. David Eisenberg (took out compile)           ##
##                                                                           ##
##    This program is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl itself.                  ##
##                                                                           ##
###############################################################################

$self = $0;
$self =~ s!^.*/!!;

use Config;

$cc = $Config{'cc'};
$flags = $Config{'ccflags'};
$charset = ($Config{'archname'} =~ /MSWin32/i) ? "-win" : "-dos";

&convert('../Pcalc.pm');
&convert('../examples/age_in_days_eu.pl');
&convert('../examples/age_in_days_us.pl');

exit;

sub convert
{
    my($source) = @_;
    my($target);

    $target = $source;
    $target .= '_';

    if (-f $target)
    {
        warn "$self: skipping renaming of '$source': '$target' exists!\n";
    }
    else
    {
        print "$self: renaming '$source' to '$target'...\n";
        unless (rename($source,$target))
        {
            warn "$self: unable to rename '$source' to '$target'!\n";
            return;
        }
    }
    print "$self: converting '$target' to '$source'...\n";
    $rc = system("./iso2pc.pl $charset <$target >$source");
    if ($rc >> 8)
    {
        warn "$self: unable to convert '$target' to '$source'!\n";
    }
}

__END__


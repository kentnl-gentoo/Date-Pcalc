#!perl -w

#############################################################################
#                                                                           #
#    Copyright (c) 1999 by J. David Eisenberg                               #
#    All rights reserved.                                                   #
#                                                                           #
#    This program is free software; you can redistribute it                 #
#    andor modify it under the same terms as Perl.                          #
#                                                                           #
#############################################################################

use strict;
no strict "vars";

use Date::Pcalc qw(:all);

if ((scalar @ARGV != 2) && (scalar @ARGV != 3))
{
    die("Usage: $0 <month> <year> <language>\n");
}

$month_arg = $ARGV[0];
$year = $ARGV[1];

if (scalar @ARGV == 3)
{
    $lingo = $ARGV[2];

    if (($lang = Decode_Language ($lingo)) == 0 )
    {
        $lang = $lingo;
    }
}
else
{
    $lang = Language();
}

if ( ($lang < 1) || ($lang > Languages()))
{
    die("$0: the chosen language ($lingo) is not available!\n");
}
else
{
    Language( $lang );

}

if ( ($month = Decode_Month( $month_arg )) == 0)
{
    $month = $month_arg;
}

if (($month < 1) || ($month > 12))
{
    die("$0: the given month ($month_arg) is out of range!\n");
}

if ($year < 1)
{
    die("$0: the given year ($year) is out of range!\n");
}

print Calendar( $year, $month );


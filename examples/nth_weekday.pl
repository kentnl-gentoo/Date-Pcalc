#!perl -w

###############################################################################
##                                                                           ##
##    Copyright (c) 1998 by Steffen Beyer.                                   ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    This program is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl itself.                  ##
##                                                                           ##
###############################################################################

use strict;
no strict "vars";

$self = $0;
$self =~  s!^.*/!!;

#	changed to Pcalc 3-Aug-1999 (Eisenberg)

use Date::Pcalc qw( Decode_Month Month_to_Text Nth_Weekday_of_Month_Year
                   Decode_Day_of_Week Day_of_Week Day_of_Week_to_Text );

%ordinal = ( 1 => 'st', 2 => 'nd', 3 => 'rd' );

if (@ARGV != 4)
{
    die "Usage:  perl  $self  <nth>  <weekday>  <month>  <year>\n";
}

$n = $ARGV[0];
if ($n =~ /^(?:[1-5]|1st|2nd|3rd|4th|5th)$/) { $n = substr($n,0,1); }
else
{
    die "$self: \"nth\" must be 1..5 or \"1st\", \"2nd\", \"3rd\", \"4th\" or \"5th\"!\n";
}

$dow = $ARGV[1];
unless ($dow =~ /^\d+$/) { $dow = Decode_Day_of_Week($dow); }
if (($dow < 1) || ($dow > 7))
{
    die "$self: \"weekday\" must be 1..7 or name of day of week in English!\n";
}

$mm = $ARGV[2];
unless ($mm =~ /^\d+$/) { $mm = Decode_Month($mm); }
if (($mm < 1) || ($mm > 12))
{
    die "$self: \"month\" must be 1..12 or name of month in English!\n";
}

$year = $ARGV[3];
if (($year !~ /^\d+$/) || ($year < 1))
{
    die "$self: \"year\" must be numeric and > 0!\n";
}

eval { ($y,$m,$d) = Nth_Weekday_of_Month_Year($year,$mm,$dow,$n); };

if ($@)
{
    if ($@ =~ /^(.+?)\s*at\s/) { die "$1!\n"; }
    else                       { die $@; }
}

printf("\nThe %s %s in %s %d ",
    ordinal($n),
    Day_of_Week_to_Text($dow),
    Month_to_Text($mm),
    $year);

if (defined $y)
{
    printf("is %s, %s %s %d.\n\n",
        Day_of_Week_to_Text(Day_of_Week($y,$m,$d)),
        Month_to_Text($m),
        ordinal($d),
        $y);
}
else
{
    print "does not exist!\n\n";
}

exit;

sub ordinal
{
    return( $_[0] .
        ( (substr($_[0],-2,1) ne '1') &&
          $ordinal{substr($_[0],-1)} ||
          'th' ) );
}

__END__


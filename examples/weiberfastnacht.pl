#!perl -w

###############################################################################
##                                                                           ##
##    Copyright (c) 2001 - 2009 by Steffen Beyer.                            ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    This program is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl itself.                  ##
##                                                                           ##
###############################################################################

BEGIN { eval { require bytes; }; }
use Date::Pcalendar::Profiles qw( $Profiles );
use Date::Pcalendar;
use Date::Pcalc::Object qw(:all);

Language(Decode_Language("Deutsch"));

Date::Pcalc->date_format(3);

$cal = Date::Pcalendar->new( $Profiles->{'DE-NW'} );

$cal->cache_add( 2000..2003 );

@date = $cal->search("Weiber");
print map sprintf("%s (%s)\n", $_, join(' ', $cal->labels($_->date()))), @date;

print "\n";

$year = $cal->year( 2004 );

@date = $year->search("Weiber");
print map sprintf("%s (%s)\n", $_, join(' ', $cal->labels($_->date()))), @date;

__END__


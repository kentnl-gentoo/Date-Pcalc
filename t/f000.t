#!perl -w

use strict;
no strict "vars";

use Date::Pcalc 1.2;

# ======================================================================
#   $version = Date::Pcalc::Version();
#   $version = $Date::Pcalc::VERSION;
# ======================================================================

print "1..2\n";

$n = 1;
if (Date::Pcalc::Version() eq "1.2")
{print "ok $n\n";} else {print "not ok $n\n";}
$n++;
if ($Date::Pcalc::VERSION eq "1.2")
{print "ok $n\n";} else {print "not ok $n\n";}

__END__


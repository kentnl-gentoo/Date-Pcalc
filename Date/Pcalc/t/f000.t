#!perl -w

use strict;
no strict "vars";

use Date::Pcalc;

# ======================================================================
#   $version = Date::Pcalc::Version(); -- taken out; no Autoloader
#   $version = $Date::Pcalc::VERSION;
# ======================================================================

print "1..1\n";

$n = 1;
if ($Date::Pcalc::VERSION eq "1.1")
{print "ok $n\n";} else {print "not ok $n\n";}

__END__


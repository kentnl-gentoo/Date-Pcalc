@ECHO OFF

rem ###########################################################################
rem ##                                                                       ##
rem ##    Copyright (c) 1999 by J. David Eisenberg                           ##
rem ##                                                                       ##
rem ##    Based on Date::Calc, version 4.2                                   ##
rem ##    Copyright (c) 1998 by Steffen Beyer.                               ##
rem ##    All rights reserved.                                               ##
rem ##                                                                       ##
rem ##    This program is free software; you can redistribute it             ##
rem ##    and/or modify it under the same terms as Perl.                     ##
rem ##                                                                       ##
rem ###########################################################################

cd ..

if exist Pcalc.pm_ goto warn3
    echo %0: renaming 'Pcalc.pm' to 'Pcalc.pm_'...
    ren Pcalc.pm Pcalc.pm_
goto cont3
:warn3
    echo %0: skipping renaming of 'Pcalc.pm': 'Pcalc.pm_' exists!
:cont3


echo %0: converting 'Pcalc.pm_' to 'Pcalc.pm'...
tools\iso2pc.pl -win <Pcalc.pm_ >Pcalc.pm

cd examples

if exist age_in_days_eu.pl_ goto warn6
    echo %0: renaming 'age_in_days_eu.pl' to 'age_in_days_eu.pl_'...
    ren age_in_days_eu.pl age_in_days_eu.pl_
goto cont6
:warn6
    echo %0: skipping renaming of 'age_in_days_eu.pl': 'age_in_days_eu.pl_' exists!
:cont6

if exist age_in_days_us.pl_ goto warn7
    echo %0: renaming 'age_in_days_us.pl' to 'age_in_days_us.pl_'...
    ren age_in_days_us.pl age_in_days_us.pl_
goto cont7
:warn7
    echo %0: skipping renaming of 'age_in_days_us.pl': 'age_in_days_us.pl_' exists!
:cont7

echo %0: converting 'age_in_days_eu.pl_' to 'age_in_days_eu.pl'...
..\tools\iso2pc.pl -win <age_in_days_eu.pl_ >age_in_days_eu.pl

echo %0: converting 'age_in_days_us.pl_' to 'age_in_days_us.pl'...
..\tools\iso2pc.pl -win <age_in_days_us.pl_ >age_in_days_us.pl

cd ..\tools


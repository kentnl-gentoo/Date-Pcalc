#!/bin/sh

###############################################################################
##                                                                           ##
##    Copyright (c) 1998 by Steffen Beyer.                                   ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    Modified 4-Aug-1999 J. David Eisenberg (removed compiles)              ##
##                                                                           ##
##    This program is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl.                         ##
##                                                                           ##
###############################################################################

self=`basename $0`

convert ()
{
    source=$1
    target="${source}_"
    if [ -f "$target" ]
    then
        echo "$self: skipping renaming of '$source': '$target' exists!" >&2
    else
        echo "$self: renaming '$source' to '$target'..."
        mv $source $target
    fi
    echo "$self: converting '$target' to '$source'..."
    perl ./iso2pc.pl -dos <$target >$source
}

convert '../Pcalc.pm'
convert '../examples/age_in_days_eu.pl'
convert '../examples/age_in_days_us.pl'


#!/usr/bin/perl


#    This application is a typical UNIX filter designed to convert
#    special characters (with ASCII codes ranging from "\x80 to 0xFF)
#    from the "ISO-Latin-1" ("ISO-8859-1") character set to one of the
#    "CP 850" PC character sets (and vice-versa) in a REVERSIBLE way
#    WITHOUT LOSSES of information.
#
#    This filter thereby tries to provide a "best possible" translation,
#    i.e., all characters that are visually the same or very similar in
#    both character sets are converted into one another, which should
#    give a pretty well readable translation of any text containing
#    special international characters.
#
#    Moreover, some of the characters without visual equivalent in the
#    other character set are converted anyway (where necessary) to some
#    arbitrary character, in order to assure that EVERY character in
#    the character set has a UNIQUE equivalent (in order to assure
#    the invertibility of the translation table used by this filter
#    and thus the reversibility of the transformation performed by
#    this filter).
#
#    The filter thereby tries to convert as little of these characters
#    without visual equivalent as possible in order to produce as little
#    "distortions" in the filtered text as possible.
#
#    Characters affected by the translation of this filter are the ones
#    with ASCII codes ranging from "\x80 to 0xFF, all other characters
#    are simply passed through.
#
#    Input comes from standard input, output goes to standard output.
#
#    Both can be redirected to/from files using the corresponding UNIX
#    redirection operators.
#
#    Available command line options are:
#
#        -v     reverse the conversion (use inverse translation table)
#        -d     use "dos" character set (used by older MS-DOS versions
#               and the FreeBSD "SCO" console, for instance) (DEFAULT)
#        -w     use "win" character set (used by newer MS-DOS versions
#               and the Windows NT/95 MS-DOS command shell)
#
#        -vd    use "dos" character set, reverse conversion
#        -dv    use "dos" character set, reverse conversion
#        -vw    use "win" character set, reverse conversion
#        -wv    use "win" character set, reverse conversion
#
#        -rev   reverse the conversion
#        -dos   use "dos" character set (DEFAULT)
#        -win   use "win" character set
#
#    The last options on the command line take precedence over the first
#    ones, where applicable.
#
#    "-v" and "-rev" are toggle switches, i.e., specifying this option
#    twice is the same as not specifying it at all.
    
$inorder = 
		"\x80\x81\x82\x83\x84\x85\x86\x87" .
		"\x88\x89\x8A\x8B\x8C\x8D\x8E\x8F" .

		"\x90\x91\x92\x93\x94\x95\x96\x97" .
		"\x98\x99\x9A\x9B\x9C\x9D\x9E\x9F" .

		"\xA0\xA1\xA2\xA3\xA4\xA5\xA6\xA7" .
		"\xA8\xA9\xAA\xAB\xAC\xAD\xAE\xAF" .

		"\xB0\xB1\xB2\xB3\xB4\xB5\xB6\xB7" .
		"\xB8\xB9\xBA\xBB\xBC\xBD\xBE\xBF" .

		"\xC0\xC1\xC2\xC3\xC4\xC5\xC6\xC7" .
		"\xC8\xC9\xCA\xCB\xCC\xCD\xCE\xCF" .

		"\xD0\xD1\xD2\xD3\xD4\xD5\xD6\xD7" .
		"\xD8\xD9\xDA\xDB\xDC\xDD\xDE\xDF" .

		"\xE0\xE1\xE2\xE3\xE4\xE5\xE6\xE7" .
		"\xE8\xE9\xEA\xEB\xEC\xED\xEE\xEF" .

		"\xF0\xF1\xF2\xF3\xF4\xF5\xF6\xF7" .
		"\xF8\xF9\xFA\xFB\xFC\xFD\xFE\xFF" ;

@iso2pc = (
        "\xB0\xB1\xB2\xB5\xB6\xB7\xBA\xBC" .
        "\xBD\xBF\xC5\xC6\xC7\xC9\xD1\xD6" .

        "\xDC\xDF\xE2\xE3\xE4\xE5\xE7\xE8" .
        "\xE9\xEA\xEC\xEE\xEF\xF0\x9E\xF2" .

        "\xF3\xAD\x9B\x9C\xF4\x9D\xB3\x9F" .
        "\xF7\xA9\xA6\xAE\xAA\xC4\xFA\xFB" .

        "\xF8\xF1\xFD\xFC\xB4\xE6\xBB\xF9" .
        "\xB8\xB9\xA7\xAF\xAC\xAB\xBE\xA8" .

        "\xC0\xC1\xC2\xC3\x8E\x8F\x92\x80" .
        "\xC8\x90\xCA\xCB\xCC\xCD\xCE\xCF" .

        "\xD0\xA5\xD2\xD3\xD4\xD5\x99\xD7" .
        "\xD8\xD9\xDA\xDB\x9A\xDD\xDE\xE1" .

        "\x85\xA0\x83\xE0\x84\x86\x91\x87" .
        "\x8A\x82\x88\x89\x8D\xA1\x8C\x8B" .

        "\xEB\xA4\x95\xA2\x93\xF5\x94\xF6" .
        "\xED\x97\xA3\x96\x81\xFF\xFE\x98 "
,
        "\xB0\xB1\xB2\xB3\xB4\xB9\xBA\xBB" .
        "\xBC\xBF\xC0\xC1\xC2\xC3\xC4\xC5" .

        "\xC8\xC9\xCA\xCB\xCC\xCD\xCE\xD5" .
        "\xD9\xDA\xDB\xDC\xDF\xF2\xFE\x9F" .

        "\xFF\xAD\xBD\x9C\xCF\xBE\xDD\xF5" .
        "\xF9\xB8\xA6\xAE\xAA\xF0\xA9\xEE" .

        "\xF8\xF1\xFD\xFC\xEF\xE6\xF4\xFA" .
        "\xF7\xFB\xA7\xAF\xAC\xAB\xF3\xA8" .

        "\xB7\xB5\xB6\xC7\x8E\x8F\x92\x80" .
        "\xD4\x90\xD2\xD3\xDE\xD6\xD7\xD8" .

        "\xD1\xA5\xE3\xE0\xE2\xE5\x99\x9E" .
        "\x9D\xEB\xE9\xEA\x9A\xED\xE8\xE1" .

        "\x85\xA0\x83\xC6\x84\x86\x91\x87" .
        "\x8A\x82\x88\x89\x8D\xA1\x8C\x8B" .

        "\xD0\xA4\x95\xA2\x93\xE4\x94\xF6" .
        "\x9B\x97\xA3\x96\x81\xEC\xE7\x98" 
);


@pc2iso = (
        "\xC7\xFC\xE9\xE2\xE4\xE0\xE5\xE7" .
        "\xEA\xEB\xE8\xEF\xEE\xEC\xC4\xC5" .

        "\xC9\xE6\xC6\xF4\xF6\xF2\xFB\xF9" .
        "\xFF\xD6\xDC\xA2\xA3\xA5\x9E\xA7" .

        "\xE1\xED\xF3\xFA\xF1\xD1\xAA\xBA" .
        "\xBF\xA9\xAC\xBD\xBC\xA1\xAB\xBB" .

        "\x80\x81\x82\xA6\xB4\x83\x84\x85" .
        "\xB8\xB9\x86\xB6\x87\x88\xBE\x89" .

        "\xC0\xC1\xC2\xC3\xAD\x8A\x8B\x8C" .
        "\xC8\x8D\xCA\xCB\xCC\xCD\xCE\xCF" .

        "\xD0\x8E\xD2\xD3\xD4\xD5\x8F\xD7" .
        "\xD8\xD9\xDA\xDB\x90\xDD\xDE\x91" .

        "\xE3\xDF\x92\x93\x94\x95\xB5\x96" .
        "\x97\x98\x99\xF0\x9A\xF8\x9B\x9C" .

        "\x9D\xB1\x9F\xA0\xA4\xF5\xF7\xA8" .
        "\xB0\xB7\xAE\xAF\xB3\xB2\xFE\xFD" 
	,	
        "\xC7\xFC\xE9\xE2\xE4\xE0\xE5\xE7" .
        "\xEA\xEB\xE8\xEF\xEE\xEC\xC4\xC5" .

        "\xC9\xE6\xC6\xF4\xF6\xF2\xFB\xF9" .
        "\xFF\xD6\xDC\xF8\xA3\xD8\xD7\x9F" .

        "\xE1\xED\xF3\xFA\xF1\xD1\xAA\xBA" .
        "\xBF\xAE\xAC\xBD\xBC\xA1\xAB\xBB" .

        "\x80\x81\x82\x83\x84\xC1\xC2\xC0" .
        "\xA9\x85\x86\x87\x88\xA2\xA5\x89" .

        "\x8A\x8B\x8C\x8D\x8E\x8F\xE3\xC3" .
        "\x90\x91\x92\x93\x94\x95\x96\xA4" .

        "\xF0\xD0\xCA\xCB\xC8\x97\xCD\xCE" .
        "\xCF\x98\x99\x9A\x9B\xA6\xCC\x9C" .

        "\xD3\xDF\xD4\xD2\xF5\xD5\xB5\xFE" .
        "\xDE\xDA\xDB\xD9\xFD\xDD\xAF\xB4" .

        "\xAD\xB1\x9D\xBE\xB6\xA7\xF7\xB8" .
        "\xB0\xA8\xB7\xB9\xB3\xB2\x9E\xA0"
);

$reverse = 0;
$charset = 0;
$neutral = 0;
$err = 0;

for ($i = 0; $i < scalar @ARGV; $i++)
{
	$option = $ARGV[$i];
	if ($option =~ /^\-/)
	{
		$option =~ s/^\-//;
		if ($option eq "v")    { $reverse = !$reverse;}
		elsif ($option eq "d") { $charset = 0; }
		elsif ($option eq "w") { $charset = 1; }
		elsif ($option eq "vd" || $option eq "dv")
		{
			$reverse = !$reverse; $charset = 0;
		}
		elsif ($option eq "vw" || $option eq "wv")
		{
			$reverse = !$reverse; $charset = 1;
		}
		elsif ($option eq "rev") { $reverse = !$reverse; }
		elsif ($option eq "dos") { $charset = 0; }
		elsif ($option eq "win") { $charset = 1; }
		else
		{
			die "$0: unknown option $option\n";
		}
	}
}

$newlist = ($reverse) ? $pc2iso[$charset] : $iso2pc[$charset];
while (<STDIN>)
{
	eval "tr/$inorder/$newlist/";
	print;
}


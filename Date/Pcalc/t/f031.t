#!perl -w

use strict;
no strict "vars";

use Date::Pcalc qw( Date_to_Days );
use Date::Pcalc qw( Easter_Sunday );

# ======================================================================
#   ($year,$mm,$dd) = Easter_Sunday($year);
# ======================================================================

print "1..719\n";

$date[1583] = 577913;
$date[1584] = 578270;
$date[1585] = 578655;
$date[1586] = 579005;
$date[1587] = 579362;
$date[1588] = 579747;
$date[1589] = 580097;
$date[1590] = 580482;
$date[1591] = 580839;
$date[1592] = 581189;
$date[1593] = 581574;
$date[1594] = 581931;
$date[1595] = 582281;
$date[1596] = 582666;
$date[1597] = 583023;
$date[1598] = 583373;
$date[1599] = 583758;
$date[1600] = 584115;
$date[1601] = 584500;
$date[1602] = 584850;
$date[1603] = 585207;
$date[1604] = 585592;
$date[1605] = 585949;
$date[1606] = 586299;
$date[1607] = 586684;
$date[1608] = 587041;
$date[1609] = 587419;
$date[1610] = 587776;
$date[1611] = 588133;
$date[1612] = 588518;
$date[1613] = 588868;
$date[1614] = 589225;
$date[1615] = 589610;
$date[1616] = 589960;
$date[1617] = 590317;
$date[1618] = 590702;
$date[1619] = 591052;
$date[1620] = 591437;
$date[1621] = 591794;
$date[1622] = 592144;
$date[1623] = 592529;
$date[1624] = 592886;
$date[1625] = 593243;
$date[1626] = 593621;
$date[1627] = 593978;
$date[1628] = 594363;
$date[1629] = 594720;
$date[1630] = 595070;
$date[1631] = 595455;
$date[1632] = 595812;
$date[1633] = 596162;
$date[1634] = 596547;
$date[1635] = 596904;
$date[1636] = 597254;
$date[1637] = 597639;
$date[1638] = 597996;
$date[1639] = 598381;
$date[1640] = 598731;
$date[1641] = 599088;
$date[1642] = 599473;
$date[1643] = 599823;
$date[1644] = 600180;
$date[1645] = 600565;
$date[1646] = 600915;
$date[1647] = 601300;
$date[1648] = 601657;
$date[1649] = 602014;
$date[1650] = 602392;
$date[1651] = 602749;
$date[1652] = 603106;
$date[1653] = 603484;
$date[1654] = 603841;
$date[1655] = 604198;
$date[1656] = 604583;
$date[1657] = 604933;
$date[1658] = 605318;
$date[1659] = 605675;
$date[1660] = 606025;
$date[1661] = 606410;
$date[1662] = 606767;
$date[1663] = 607117;
$date[1664] = 607502;
$date[1665] = 607859;
$date[1666] = 608244;
$date[1667] = 608594;
$date[1668] = 608951;
$date[1669] = 609336;
$date[1670] = 609686;
$date[1671] = 610043;
$date[1672] = 610428;
$date[1673] = 610778;
$date[1674] = 611135;
$date[1675] = 611520;
$date[1676] = 611877;
$date[1677] = 612255;
$date[1678] = 612612;
$date[1679] = 612969;
$date[1680] = 613354;
$date[1681] = 613704;
$date[1682] = 614061;
$date[1683] = 614446;
$date[1684] = 614796;
$date[1685] = 615181;
$date[1686] = 615538;
$date[1687] = 615888;
$date[1688] = 616273;
$date[1689] = 616630;
$date[1690] = 616980;
$date[1691] = 617365;
$date[1692] = 617722;
$date[1693] = 618072;
$date[1694] = 618457;
$date[1695] = 618814;
$date[1696] = 619199;
$date[1697] = 619549;
$date[1698] = 619906;
$date[1699] = 620291;
$date[1700] = 620648;
$date[1701] = 620998;
$date[1702] = 621383;
$date[1703] = 621740;
$date[1704] = 622090;
$date[1705] = 622475;
$date[1706] = 622832;
$date[1707] = 623217;
$date[1708] = 623567;
$date[1709] = 623924;
$date[1710] = 624309;
$date[1711] = 624659;
$date[1712] = 625016;
$date[1713] = 625401;
$date[1714] = 625751;
$date[1715] = 626136;
$date[1716] = 626493;
$date[1717] = 626843;
$date[1718] = 627228;
$date[1719] = 627585;
$date[1720] = 627942;
$date[1721] = 628320;
$date[1722] = 628677;
$date[1723] = 629034;
$date[1724] = 629419;
$date[1725] = 629769;
$date[1726] = 630154;
$date[1727] = 630511;
$date[1728] = 630861;
$date[1729] = 631246;
$date[1730] = 631603;
$date[1731] = 631953;
$date[1732] = 632338;
$date[1733] = 632695;
$date[1734] = 633080;
$date[1735] = 633430;
$date[1736] = 633787;
$date[1737] = 634172;
$date[1738] = 634522;
$date[1739] = 634879;
$date[1740] = 635264;
$date[1741] = 635614;
$date[1742] = 635971;
$date[1743] = 636356;
$date[1744] = 636713;
$date[1745] = 637091;
$date[1746] = 637448;
$date[1747] = 637805;
$date[1748] = 638183;
$date[1749] = 638540;
$date[1750] = 638897;
$date[1751] = 639275;
$date[1752] = 639632;
$date[1753] = 640017;
$date[1754] = 640374;
$date[1755] = 640724;
$date[1756] = 641109;
$date[1757] = 641466;
$date[1758] = 641816;
$date[1759] = 642201;
$date[1760] = 642558;
$date[1761] = 642908;
$date[1762] = 643293;
$date[1763] = 643650;
$date[1764] = 644035;
$date[1765] = 644385;
$date[1766] = 644742;
$date[1767] = 645127;
$date[1768] = 645477;
$date[1769] = 645834;
$date[1770] = 646219;
$date[1771] = 646569;
$date[1772] = 646954;
$date[1773] = 647311;
$date[1774] = 647668;
$date[1775] = 648046;
$date[1776] = 648403;
$date[1777] = 648760;
$date[1778] = 649145;
$date[1779] = 649495;
$date[1780] = 649852;
$date[1781] = 650237;
$date[1782] = 650587;
$date[1783] = 650972;
$date[1784] = 651329;
$date[1785] = 651679;
$date[1786] = 652064;
$date[1787] = 652421;
$date[1788] = 652771;
$date[1789] = 653156;
$date[1790] = 653513;
$date[1791] = 653898;
$date[1792] = 654248;
$date[1793] = 654605;
$date[1794] = 654990;
$date[1795] = 655340;
$date[1796] = 655697;
$date[1797] = 656082;
$date[1798] = 656439;
$date[1799] = 656789;
$date[1800] = 657174;
$date[1801] = 657531;
$date[1802] = 657909;
$date[1803] = 658266;
$date[1804] = 658623;
$date[1805] = 659001;
$date[1806] = 659358;
$date[1807] = 659715;
$date[1808] = 660100;
$date[1809] = 660450;
$date[1810] = 660835;
$date[1811] = 661192;
$date[1812] = 661542;
$date[1813] = 661927;
$date[1814] = 662284;
$date[1815] = 662634;
$date[1816] = 663019;
$date[1817] = 663376;
$date[1818] = 663726;
$date[1819] = 664111;
$date[1820] = 664468;
$date[1821] = 664853;
$date[1822] = 665203;
$date[1823] = 665560;
$date[1824] = 665945;
$date[1825] = 666295;
$date[1826] = 666652;
$date[1827] = 667037;
$date[1828] = 667394;
$date[1829] = 667772;
$date[1830] = 668129;
$date[1831] = 668486;
$date[1832] = 668871;
$date[1833] = 669221;
$date[1834] = 669578;
$date[1835] = 669963;
$date[1836] = 670313;
$date[1837] = 670670;
$date[1838] = 671055;
$date[1839] = 671405;
$date[1840] = 671790;
$date[1841] = 672147;
$date[1842] = 672497;
$date[1843] = 672882;
$date[1844] = 673239;
$date[1845] = 673589;
$date[1846] = 673974;
$date[1847] = 674331;
$date[1848] = 674716;
$date[1849] = 675066;
$date[1850] = 675423;
$date[1851] = 675808;
$date[1852] = 676165;
$date[1853] = 676515;
$date[1854] = 676900;
$date[1855] = 677257;
$date[1856] = 677607;
$date[1857] = 677992;
$date[1858] = 678349;
$date[1859] = 678734;
$date[1860] = 679084;
$date[1861] = 679441;
$date[1862] = 679826;
$date[1863] = 680176;
$date[1864] = 680533;
$date[1865] = 680918;
$date[1866] = 681268;
$date[1867] = 681653;
$date[1868] = 682010;
$date[1869] = 682360;
$date[1870] = 682745;
$date[1871] = 683102;
$date[1872] = 683459;
$date[1873] = 683837;
$date[1874] = 684194;
$date[1875] = 684551;
$date[1876] = 684936;
$date[1877] = 685286;
$date[1878] = 685671;
$date[1879] = 686028;
$date[1880] = 686378;
$date[1881] = 686763;
$date[1882] = 687120;
$date[1883] = 687470;
$date[1884] = 687855;
$date[1885] = 688212;
$date[1886] = 688597;
$date[1887] = 688947;
$date[1888] = 689304;
$date[1889] = 689689;
$date[1890] = 690039;
$date[1891] = 690396;
$date[1892] = 690781;
$date[1893] = 691131;
$date[1894] = 691488;
$date[1895] = 691873;
$date[1896] = 692230;
$date[1897] = 692608;
$date[1898] = 692965;
$date[1899] = 693322;
$date[1900] = 693700;
$date[1901] = 694057;
$date[1902] = 694414;
$date[1903] = 694792;
$date[1904] = 695149;
$date[1905] = 695534;
$date[1906] = 695891;
$date[1907] = 696241;
$date[1908] = 696626;
$date[1909] = 696983;
$date[1910] = 697333;
$date[1911] = 697718;
$date[1912] = 698075;
$date[1913] = 698425;
$date[1914] = 698810;
$date[1915] = 699167;
$date[1916] = 699552;
$date[1917] = 699902;
$date[1918] = 700259;
$date[1919] = 700644;
$date[1920] = 700994;
$date[1921] = 701351;
$date[1922] = 701736;
$date[1923] = 702086;
$date[1924] = 702471;
$date[1925] = 702828;
$date[1926] = 703185;
$date[1927] = 703563;
$date[1928] = 703920;
$date[1929] = 704277;
$date[1930] = 704662;
$date[1931] = 705012;
$date[1932] = 705369;
$date[1933] = 705754;
$date[1934] = 706104;
$date[1935] = 706489;
$date[1936] = 706846;
$date[1937] = 707196;
$date[1938] = 707581;
$date[1939] = 707938;
$date[1940] = 708288;
$date[1941] = 708673;
$date[1942] = 709030;
$date[1943] = 709415;
$date[1944] = 709765;
$date[1945] = 710122;
$date[1946] = 710507;
$date[1947] = 710857;
$date[1948] = 711214;
$date[1949] = 711599;
$date[1950] = 711956;
$date[1951] = 712306;
$date[1952] = 712691;
$date[1953] = 713048;
$date[1954] = 713426;
$date[1955] = 713783;
$date[1956] = 714140;
$date[1957] = 714525;
$date[1958] = 714875;
$date[1959] = 715232;
$date[1960] = 715617;
$date[1961] = 715967;
$date[1962] = 716352;
$date[1963] = 716709;
$date[1964] = 717059;
$date[1965] = 717444;
$date[1966] = 717801;
$date[1967] = 718151;
$date[1968] = 718536;
$date[1969] = 718893;
$date[1970] = 719250;
$date[1971] = 719628;
$date[1972] = 719985;
$date[1973] = 720370;
$date[1974] = 720727;
$date[1975] = 721077;
$date[1976] = 721462;
$date[1977] = 721819;
$date[1978] = 722169;
$date[1979] = 722554;
$date[1980] = 722911;
$date[1981] = 723289;
$date[1982] = 723646;
$date[1983] = 724003;
$date[1984] = 724388;
$date[1985] = 724738;
$date[1986] = 725095;
$date[1987] = 725480;
$date[1988] = 725830;
$date[1989] = 726187;
$date[1990] = 726572;
$date[1991] = 726922;
$date[1992] = 727307;
$date[1993] = 727664;
$date[1994] = 728021;
$date[1995] = 728399;
$date[1996] = 728756;
$date[1997] = 729113;
$date[1998] = 729491;
$date[1999] = 729848;
$date[2000] = 730233;
$date[2001] = 730590;
$date[2002] = 730940;
$date[2003] = 731325;
$date[2004] = 731682;
$date[2005] = 732032;
$date[2006] = 732417;
$date[2007] = 732774;
$date[2008] = 733124;
$date[2009] = 733509;
$date[2010] = 733866;
$date[2011] = 734251;
$date[2012] = 734601;
$date[2013] = 734958;
$date[2014] = 735343;
$date[2015] = 735693;
$date[2016] = 736050;
$date[2017] = 736435;
$date[2018] = 736785;
$date[2019] = 737170;
$date[2020] = 737527;
$date[2021] = 737884;
$date[2022] = 738262;
$date[2023] = 738619;
$date[2024] = 738976;
$date[2025] = 739361;
$date[2026] = 739711;
$date[2027] = 740068;
$date[2028] = 740453;
$date[2029] = 740803;
$date[2030] = 741188;
$date[2031] = 741545;
$date[2032] = 741895;
$date[2033] = 742280;
$date[2034] = 742637;
$date[2035] = 742987;
$date[2036] = 743372;
$date[2037] = 743729;
$date[2038] = 744114;
$date[2039] = 744464;
$date[2040] = 744821;
$date[2041] = 745206;
$date[2042] = 745556;
$date[2043] = 745913;
$date[2044] = 746298;
$date[2045] = 746655;
$date[2046] = 747005;
$date[2047] = 747390;
$date[2048] = 747747;
$date[2049] = 748125;
$date[2050] = 748482;
$date[2051] = 748839;
$date[2052] = 749224;
$date[2053] = 749574;
$date[2054] = 749931;
$date[2055] = 750316;
$date[2056] = 750666;
$date[2057] = 751051;
$date[2058] = 751408;
$date[2059] = 751758;
$date[2060] = 752143;
$date[2061] = 752500;
$date[2062] = 752850;
$date[2063] = 753235;
$date[2064] = 753592;
$date[2065] = 753949;
$date[2066] = 754327;
$date[2067] = 754684;
$date[2068] = 755069;
$date[2069] = 755426;
$date[2070] = 755776;
$date[2071] = 756161;
$date[2072] = 756518;
$date[2073] = 756868;
$date[2074] = 757253;
$date[2075] = 757610;
$date[2076] = 757988;
$date[2077] = 758345;
$date[2078] = 758702;
$date[2079] = 759087;
$date[2080] = 759437;
$date[2081] = 759794;
$date[2082] = 760179;
$date[2083] = 760529;
$date[2084] = 760886;
$date[2085] = 761271;
$date[2086] = 761621;
$date[2087] = 762006;
$date[2088] = 762363;
$date[2089] = 762720;
$date[2090] = 763098;
$date[2091] = 763455;
$date[2092] = 763812;
$date[2093] = 764190;
$date[2094] = 764547;
$date[2095] = 764932;
$date[2096] = 765289;
$date[2097] = 765639;
$date[2098] = 766024;
$date[2099] = 766381;
$date[2100] = 766731;
$date[2101] = 767116;
$date[2102] = 767473;
$date[2103] = 767823;
$date[2104] = 768208;
$date[2105] = 768565;
$date[2106] = 768943;
$date[2107] = 769300;
$date[2108] = 769657;
$date[2109] = 770042;
$date[2110] = 770392;
$date[2111] = 770749;
$date[2112] = 771134;
$date[2113] = 771484;
$date[2114] = 771869;
$date[2115] = 772226;
$date[2116] = 772576;
$date[2117] = 772961;
$date[2118] = 773318;
$date[2119] = 773668;
$date[2120] = 774053;
$date[2121] = 774410;
$date[2122] = 774767;
$date[2123] = 775145;
$date[2124] = 775502;
$date[2125] = 775887;
$date[2126] = 776244;
$date[2127] = 776594;
$date[2128] = 776979;
$date[2129] = 777336;
$date[2130] = 777686;
$date[2131] = 778071;
$date[2132] = 778428;
$date[2133] = 778806;
$date[2134] = 779163;
$date[2135] = 779520;
$date[2136] = 779905;
$date[2137] = 780255;
$date[2138] = 780612;
$date[2139] = 780997;
$date[2140] = 781347;
$date[2141] = 781704;
$date[2142] = 782089;
$date[2143] = 782439;
$date[2144] = 782824;
$date[2145] = 783181;
$date[2146] = 783538;
$date[2147] = 783916;
$date[2148] = 784273;
$date[2149] = 784630;
$date[2150] = 785008;
$date[2151] = 785365;
$date[2152] = 785750;
$date[2153] = 786107;
$date[2154] = 786457;
$date[2155] = 786842;
$date[2156] = 787199;
$date[2157] = 787549;
$date[2158] = 787934;
$date[2159] = 788291;
$date[2160] = 788641;
$date[2161] = 789026;
$date[2162] = 789383;
$date[2163] = 789768;
$date[2164] = 790118;
$date[2165] = 790475;
$date[2166] = 790860;
$date[2167] = 791210;
$date[2168] = 791567;
$date[2169] = 791952;
$date[2170] = 792302;
$date[2171] = 792687;
$date[2172] = 793044;
$date[2173] = 793401;
$date[2174] = 793779;
$date[2175] = 794136;
$date[2176] = 794493;
$date[2177] = 794878;
$date[2178] = 795228;
$date[2179] = 795585;
$date[2180] = 795970;
$date[2181] = 796320;
$date[2182] = 796705;
$date[2183] = 797062;
$date[2184] = 797412;
$date[2185] = 797797;
$date[2186] = 798154;
$date[2187] = 798504;
$date[2188] = 798889;
$date[2189] = 799246;
$date[2190] = 799631;
$date[2191] = 799981;
$date[2192] = 800338;
$date[2193] = 800723;
$date[2194] = 801073;
$date[2195] = 801430;
$date[2196] = 801815;
$date[2197] = 802172;
$date[2198] = 802522;
$date[2199] = 802907;
$date[2200] = 803264;
$date[2201] = 803642;
$date[2202] = 803999;
$date[2203] = 804356;
$date[2204] = 804741;
$date[2205] = 805091;
$date[2206] = 805448;
$date[2207] = 805833;
$date[2208] = 806183;
$date[2209] = 806540;
$date[2210] = 806925;
$date[2211] = 807275;
$date[2212] = 807660;
$date[2213] = 808017;
$date[2214] = 808367;
$date[2215] = 808752;
$date[2216] = 809109;
$date[2217] = 809466;
$date[2218] = 809844;
$date[2219] = 810201;
$date[2220] = 810586;
$date[2221] = 810943;
$date[2222] = 811293;
$date[2223] = 811678;
$date[2224] = 812035;
$date[2225] = 812385;
$date[2226] = 812770;
$date[2227] = 813127;
$date[2228] = 813477;
$date[2229] = 813862;
$date[2230] = 814219;
$date[2231] = 814604;
$date[2232] = 814954;
$date[2233] = 815311;
$date[2234] = 815696;
$date[2235] = 816046;
$date[2236] = 816403;
$date[2237] = 816788;
$date[2238] = 817138;
$date[2239] = 817523;
$date[2240] = 817880;
$date[2241] = 818237;
$date[2242] = 818615;
$date[2243] = 818972;
$date[2244] = 819329;
$date[2245] = 819707;
$date[2246] = 820064;
$date[2247] = 820421;
$date[2248] = 820806;
$date[2249] = 821156;
$date[2250] = 821541;
$date[2251] = 821898;
$date[2252] = 822248;
$date[2253] = 822633;
$date[2254] = 822990;
$date[2255] = 823340;
$date[2256] = 823725;
$date[2257] = 824082;
$date[2258] = 824467;
$date[2259] = 824817;
$date[2260] = 825174;
$date[2261] = 825559;
$date[2262] = 825909;
$date[2263] = 826266;
$date[2264] = 826651;
$date[2265] = 827001;
$date[2266] = 827358;
$date[2267] = 827743;
$date[2268] = 828100;
$date[2269] = 828478;
$date[2270] = 828835;
$date[2271] = 829192;
$date[2272] = 829577;
$date[2273] = 829927;
$date[2274] = 830284;
$date[2275] = 830669;
$date[2276] = 831019;
$date[2277] = 831404;
$date[2278] = 831761;
$date[2279] = 832111;
$date[2280] = 832496;
$date[2281] = 832853;
$date[2282] = 833203;
$date[2283] = 833588;
$date[2284] = 833945;
$date[2285] = 834295;
$date[2286] = 834680;
$date[2287] = 835037;
$date[2288] = 835422;
$date[2289] = 835772;
$date[2290] = 836129;
$date[2291] = 836514;
$date[2292] = 836871;
$date[2293] = 837221;
$date[2294] = 837606;
$date[2295] = 837963;
$date[2296] = 838341;
$date[2297] = 838698;
$date[2298] = 839055;
$date[2299] = 839433;

$n = 1;
eval { ($year,$mm,$dd) = Easter_Sunday(1582); };
if ($@ =~ /year out of range/)
{print "ok $n\n";} else {print "not ok $n\n";}
$n++;

eval { ($year,$mm,$dd) = Easter_Sunday(2300); };
if ($@ =~ /year out of range/)
{print "ok $n\n";} else {print "not ok $n\n";}
$n++;

for ( $year = 1583; $year < 2300; $year++ )
{
    if ((($yy,$mm,$dd) = Easter_Sunday($year)) &&
        (Date_to_Days($yy,$mm,$dd) == $date[$year]))
    {print "ok $n\n";} else {print "not ok $n\n";}
    $n++;
}

__END__


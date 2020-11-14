#!/usr/bin/perl

use strict;
use warnings;

# strict is a compiler flag that tells perl compiler to change its beheviour in three ways
# warnings is used to catch unsafe code 
# Open and read the arguments (filenames) and print the filenames contents



my $numArgs = @ARGV;
my $argNum;


foreach $argNum(0 .. $#ARGV)
{
  my $fileName = shift @ARGV; 
  open(my $fh, '<', $fileName) or die $!;

  while(my $row = <$fh>) {
      chomp $row;
      print "$row\n";
  }
  close($fh);

}


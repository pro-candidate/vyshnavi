#!/usr/bin/perl

use strict;
use warnings;

#read the file output.txt
my $file = "/home/testuser/interview_questions/output.txt";
open(FH,"<$file") or die "file does not exists";
my @file_content = <FH>;
foreach (@file_content)
{
	if($_ =~/manipedi/)
	{
		my @line_content = split(/ {2,}/,$_);
		print "url is $line_content[5]\n";
	}
}

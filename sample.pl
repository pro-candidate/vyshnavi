#!/usr/bin/perl
use strict;
use warnings;
use XML::Simple;
use Data::Dumper;

my $xml = new XML::Simple;
my $file = "/home/testuser/interview_questions/sample.xml";
my $data = $xml->XMLin($file);
foreach my $books (keys $data->{book})
{
	my $bookid = $books;
	print "$bookid was written by " .$data->{book}->{$bookid}->{author}."\n";
}


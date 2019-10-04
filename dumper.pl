#!/bin/perl
use WWW::Mechanize ();

print "[-] Enter Absolute URL: ";
chomp($url=<STDIN>);
my $mech = WWW::Mechanize->new();
$mech->get($url);
$mech->dump_forms;
#!/usr/bin/perl
#
# $Id$

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck;

######################################################################

my $check = new DNSCheck(
    {
        interactive => 1,
        locale      => "locale/en.yaml"
    }
);

die "usage: dnscheck.pl [zone]" unless ($ARGV[0]);

$check->zone($ARGV[0]);
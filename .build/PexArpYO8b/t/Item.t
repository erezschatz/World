#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;
use Test::Deep;

BEGIN {
	use_ok('World::Item');
}
=begin
my %itemValues = (
		  name => 'lamp',
		  stateDescriptions => ['turned on', 'turned off', 'broken', 'missing'],
		  description => {
				  immutable => 'This is a ceiling lamp',
				  mutable => 'The lamp is',
				  },
		  itemState => 1,
		 );

my $item = World::Item->new( %itemValues );

isa_ok( $item, 'World::Item' );
my $index = 0;
foreach my $state (@{$itemValues{stateDescriptions}}) {
    ok ($item -> alterState($state) == $index);
    ok ($item -> showDescription() eq $itemValues{description} -> {immutable}.
					$itemValues{description} -> {mutable}.
					@{$itemValues{stateDescriptions}}[$index++])
}
=cut

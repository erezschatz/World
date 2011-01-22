#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 1;
BEGIN {
	use_ok('World::Room');
}

=begin
use World::Item;
my $lamp = World::Item->new( name => 'lamp',
		  stateDescriptions => ['turned on', 'turned off', 'broken', 'missing'],
		  description => {
				  immutable => 'This is a ceiling lamp',
				  mutable => 'The lamp is',
				  },
		  itemState => 1,
		  );
my $door = World::Item->new( name => 'door',
		  stateDescriptions => ['closed', 'open'],
		  description => {
				  immutable => 'This is a door',
				  mutable => 'The door is',
				  },
		  itemState => 1,
		  );

my $room = World::Room -> new( name => 'room',
			      stateDescriptions => ['dark', 'lit, you see a door on the west side'],
			      description => {
					      immutable => 'this is a room',
					      mutable => 'the room is',
					      },
			      items => [\$lamp, \$door],
			      );

isa_ok( $room, 'World::Room' );

warn 'changing items state and comparing results';
foreach my $item (@{$room -> {items}}) {
    my $index = 0;
    foreach my $state (@{$item -> {stateDescriptions}}) {
	ok ($item -> alterState($state) == $index);
	print $room -> showDescription();
	#ok ($room -> showDescription() eq $itemValues{description} -> {immutable}.
		#			    $itemValues{description} -> {mutable}.
			#		    @{$itemValues{stateDescriptions}}[$index++]);
    }
}
=cut

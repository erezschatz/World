#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 3;
BEGIN {
	use_ok('World::Room');
	use_ok('World::Item');
}

my $mutable = 'The room is dark';
my $immutable = 'This is a Room';

my $lamp = World::Item->new( name => 'lamp',
		  stateDescriptions => ['turned on', 'turned off', 'broken', 'missing'],
		  description => 'This is a ceiling lamp. The lamp is',
		  itemState => 1,
		  );

my $door = World::Item->new( name => 'door',
		  stateDescriptions => ['closed', 'open'],
		  description => 'You see a door, the door is',
		  itemState => 1,
		  );

my $switch = World::Item->new( name => 'switch',
		  stateDescriptions => ['off', 'on'],
		  description => 'You see a switch, the switch is turned ',
		  itemState => 0,
		  );

my $room = World::Room -> new( name => 'room',
			      stateDescriptions => ['dark', 'lit']
			      description => 'This is a room. The room is',
			      items => [lamp => {
			      			itemObject => $lamp,
						visibleState => 1,
						}, 
					door => {
						itemObject => $door,
						visibleState => 1
						},
					switch => {
						itemObject => $switch,
						visibleState => -1
						}
					],
			      exits => {'out' => 'endGame' },
			      );

isa_ok( $room, 'World::Room' );

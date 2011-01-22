#!/usr/bin/env perl 

use strict;
use warnings;
use Test::More tests => 4;

BEGIN {
	use_ok('World');
}

my $world = new World(
		name => 'Room',
		description => 'This is a Room',
		);
cmp_ok ($world->name, 'eq', 'Room', 'World->room attribute');
cmp_ok ($world->description, 'eq', 'This is a Room', 'World->description attribute');

cmp_ok ($world->showDescription, 'eq', 'This is a Room', 'showDescription method');

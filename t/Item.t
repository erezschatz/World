#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 4;

BEGIN {
	use_ok('World::Item');
}

my $item = World::Item->new(
		name => 'lamp',
		stateDescriptions => ['turned on', 'turned off', 'broken', 'missing'],
		description => 'This is a ceiling lamp, The lamp is ',
		itemState => 1,
		);
isa_ok($item, 'World::Item');
cmp_ok($item->showState(), 'eq',
		'This is a ceiling lamp, The lamp is turned on',);
$item->setState(1);
cmp_ok($item->showState(), 'eq',
		'This is a ceiling lamp, The lamp is turned off',);

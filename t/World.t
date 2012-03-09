#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 8;

BEGIN {
    use_ok('World');
}

my $description = 'This is a Room. The room is ';
my $world = World->new(
    name => 'Room',
    description => $description,
    stateDescriptions => ['dark', 'very dark'],
);
isa_ok($world, 'World');
cmp_ok ($world->name, 'eq', 'Room',
        'World->room attribute');
cmp_ok ($world->description, 'eq', $description,
        'World->description attribute');

cmp_ok ($world->showState, 'eq',
        $description.'dark',
        'showState method');

ok($world->setState(1), 'set object to an existing state');

cmp_ok ($world->showState(), 'eq',
        $description.'very dark',
        'showDescription method');
ok(!$world->setState(5), 'set object to a non-existing state');

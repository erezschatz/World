#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 2;

use_ok('World::NPC') or exit;

my $npc = World::NPC -> new( );

isa_ok( $npc, 'World::NPC' );
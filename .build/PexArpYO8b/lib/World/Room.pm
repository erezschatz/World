#!/usr/bin/perl
package World::Room;
BEGIN {
  $World::Room::VERSION = '0.001';
}

use Moose;
extends "World";

has directions => {
		isa => 'ref(Array)',
		is => 'rw',
		required => 1
	      );

has items => {
		isa => 'ref(Array)',
		is => 'rw',
	      );

1;

__END__
=pod

=head1 NAME

World::Room

=head1 VERSION

version 0.001

=head1 AUTHOR

Erez Schatz <erez.schatz@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Erez Schatz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


#!/usr/bin/perl
package World::Room;

use Moose;
extends "World";

has 'exits' => (
		isa => 'HashRef',
		is => 'ro',
		required => 1,
	       );

has items => (
		isa => 'ArrayRef',
		is => 'rw',
	      );
1;

__END__

# ABSTRACT: turns baubles into trinkets

=head1 SYNOPSIS

=method showDescription

This method does something experimental.

=head1 SEE ALSO

=for :list
* L<Your::Module>
* L<Your::Package>

#!/usr/bin/perl
package World;
BEGIN {
  $World::VERSION = '0.001';
}
use Moose;

has name => (
		isa => 'Str',
		is => 'ro',
		required => 1
	      );
has description => (
		isa => 'Str',
		is => 'rw',
		required => 1
		);

sub showDescription {
    my $self = shift;
    return $self->description;
}
1;



=pod

=head1 NAME

World - turns baubles into trinkets

=head1 VERSION

version 0.001

=head1 SYNOPSIS

=head1 METHODS

=head2 showDescription

This method does something experimental.

=head1 VERSION

version 0.1

=head1 SEE ALSO

=for :list * L<Your::Module>
* L<Your::Package>

=head1 AUTHOR

Erez Schatz <erez.schatz@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Erez Schatz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

# ABSTRACT: turns baubles into trinkets


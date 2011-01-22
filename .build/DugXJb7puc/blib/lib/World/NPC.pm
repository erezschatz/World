#!/usr/bin/perl
package World::NPC;
use strict;
use warnings;
use World::Base;
use Exporter   ();
our ($VERSION, @ISA, @EXPORT);
$VERSION = "1.00";

@ISA = qw(World::Base);
@EXPORT = qw();

1;
__END__
=pod

=head1 NAME

World::NPC

=head1 VERSION

version 0.001

=head1 AUTHOR

Erez Schatz <erez.schatz@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Erez Schatz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


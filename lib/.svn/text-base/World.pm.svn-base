#!/usr/bin/perl
package World;
use Moose;

=begin declare
use Declare::Constraints::Simple-All;

my $test = IsStr;
my $description = IsHashRef (
		HasAllKeys (qw (mutable immutable)),
		OnHashKeys (
			mutable => $test,
			immutable => $test
			));
=cut

has 'name' => (
		isa => 'Str',
		is => 'ro',
		required => 1
	      );

has 'description' => (
		isa => 'Str',
		is => 'ro',
		required => 1
		);

has 'stateDescriptions' => (
		isa => 'ArrayRef',
		is => 'ro',
		required => 1,
	       );

has 'currentState' => (
		isa => 'Int',
		is => 'rw',
		required => 1,
		default => 0
	       );

sub setState {
	my ($self, $state) = @_;
	return $state < @{$self->stateDescriptions} &&
		$self->currentState($state);
}

sub showState {
	my $self = shift;
	return $self->description.
		@{$self->stateDescriptions}[$self->currentState];
}

1;

__END__

# ABSTRACT: turns baubles into trinkets

=head1 VERSION

version 0.1

=head1 SYNOPSIS

=method showDescription

This method does something experimental.

=head1 SEE ALSO

=for :list
* L<Your::Module>
* L<Your::Package>

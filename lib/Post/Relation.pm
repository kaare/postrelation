package Post::Relation;

our $VERSION = '0.01';

use Moose;

use DBI;

has 'db' => (
	is => 'ro',
	isa => 'ArrayRef',
);
has 'dbh' => (
	is => 'ro',
	lazy    => 1,
	builder => '_build_dbh',
	init_arg   => undef,
);

sub _build_dbh {
	my $self = shift;
	return unless $self->db;

	$self->{dbh} = DBI->connect(@{ $self->db });
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Post::Relation - Object/Relation mapper for PostgreSQL

=head1 SYNOPSIS

 use Post::Relation;

 has 'schema' => (
	is => 'ro',
	default => sub { AWE2ng::Model::Schema->new },
);

=head1 DESCRIPTION

The center of gravity for Post::Relation.

=head1 AUTHOR

Kaare Rasmussen <kaare@cpan.org>.

=head1 COPYRIGHT

Copyright (C) 2010, Kaare Rasmussen

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.

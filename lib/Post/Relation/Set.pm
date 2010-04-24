package Post::Relation::Set;
use Moose;

use Post::Relation;

has 'db' => (
	is => 'ro',
	default => sub { Post::Relation->new },
);

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

Post::Relation::Set - Set Base Class

=head1 SYNOPSIS

has 'tablename' => (
	is      => 'ro',
	default => 'schema.table',
);

extends 'Post::Relation::Set';

=head1 DESCRIPTION

Post::Relation::Set is a class for anything returning sets.

At the moment it is in fact a class for anything that needs a schema atribute.

=head1 AUTHOR

Kaare Rasmussen <kaare@cpan.org>.

=head1 COPYRIGHT

Copyright (C) 2010, Kaare Rasmussen

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.

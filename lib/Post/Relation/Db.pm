package Post::Relation::Db;
use Moose;

use Post::Relation;

sub create_db {
	system('createdb'
}
__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

Post::Relation::Db - Base Class for database habdling

=head1 SYNOPSIS

=head1 DESCRIPTION

Post::Relation::Db is a class for anything db related.

=head1 AUTHOR

Kaare Rasmussen <kaare@cpan.org>.

=head1 COPYRIGHT

Copyright (C) 2010, Kaare Rasmussen

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.

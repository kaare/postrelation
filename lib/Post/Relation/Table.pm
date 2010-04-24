package Post::Relation::Table;
use Moose;

extends 'Post::Relation::Set';

sub insert {
	my ($self, %args) = @_;
	my $dbh = $self->db->dbh;
	my $colnames = join ',', keys %args;
	my $cols = join ',', ('?') x scalar keys %args;
	my $tablename = $self->tablename;
	my $sql = "INSERT INTO $tablename ($colnames) VALUES ($cols) RETURNING id";
	my $sth = $dbh->prepare($sql) or die $dbh->errstr;
	$sth->execute(values %args) or die $dbh->errstr;
	return $sth->fetch()->[0];
}	

sub update {
	my ($self, %args) = @_;
	my $dbh = $self->db->dbh;
	my $key = delete $args{key};
	my $colnames = join ',', keys %args;
	my $cols = join ',', ('?') x scalar keys %args;
	my $tablename = $self->tablename;
	my $sql = "UPDATE $tablename SET ($colnames) = ($cols) WHERE $key";
	my $sth = $dbh->prepare($sql) or die $dbh->errstr;
	$sth->execute(values %args) or die $dbh->errstr;
}	

__PACKAGE__->meta->make_immutable;

1;
__END__

=head1 NAME

Post::Relation::Table - Table Base Class

=head1 SYNOPSIS

has 'tablename' => (
	is      => 'ro',
	default => 'schema.table',
);

extends 'Post::Relation::Table';

=head1 DESCRIPTION

... Under construction

=head1 METHODS

=head2 insert

This method inserts a row.

=head2 update

This method updates a row.

=head1 AUTHOR

Kaare Rasmussen <kaare@cpan.org>.

=head1 COPYRIGHT

Copyright (C) 2010, Kaare Rasmussen

This module is free software; you can redistribute it or modify it
under the same terms as Perl itself.

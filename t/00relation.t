#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Post::Relation' }

ok(my $db = Post::Relation->new(db => ['dbi:Pg:dbname=awe2ng','kaare','test',]), 'Create base');
isa_ok($db, 'Post::Relation', 'Base class type');
ok(my $dbh = $db->dbh, 'Get dbh');
isa_ok($dbh, 'DBI::db', 'dbh type');
done_testing();

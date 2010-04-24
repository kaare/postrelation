#!perl

use Module::Build;

my $build = Module::Build->new(
    dist_version_from => 'lib/Post/Relation.pm',
    module_name => 'Post::Relation',
    license     => 'perl',
    create_makefile_pl => 'traditional',
);
$build->create_build_script;

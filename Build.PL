#!/usr/bin/perl

use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Apache2::Mogile::Dispatch',
    license => 'perl',
    dist_author => 'Nick Gerakines <nick@gerakines.net>',
    dist_version_from => 'lib/Apache2/Mogile/Dispatch.pm',
    requires => {
        'MogileFS' => 0,
        'English' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Apache2-Mogile-Dispatch-*' ],
);

$builder->create_build_script();

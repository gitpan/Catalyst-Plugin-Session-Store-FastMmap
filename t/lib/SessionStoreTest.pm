#!/usr/bin/perl

use strict;
use warnings;

use File::Temp;
use File::Spec;

use Catalyst::Plugin::Session::Test::Store (
    backend => "FastMmap",
    config => { storage => scalar(File::Temp::tmpnam()) }, 
    # we do not care in this package about deleting temporary file as it is
    # removed automatically by Cache::FastMmap 
    extra_tests => 1
);

{
    package SessionStoreTest;
    use Catalyst;

    sub store_scalar : Global {
        my ($self, $c) = @_;

        $c->res->body($c->session->{'scalar'} = 456);
    }

    sub get_scalar : Global {
        my ($self, $c) = @_;

        $c->res->body($c->session->{'scalar'});
    }

    __PACKAGE__->setup_actions;

}

1;


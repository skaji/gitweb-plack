#!/usr/bin/env perl
use strict;
use warnings;
use FindBin '$Bin';
use Plack::App::WrapCGI;
use Plack::Builder;

## For basic authentication, uncomment code.
#
# my $authorized_users = do "$Bin/auth.pl" or die;
# sub is_authorized_user {
#     my ($user, $pass) = @_;
#     return scalar grep {
#         $user eq $_->{user}
#         &&
#         $pass eq $_->{pass}
#     } @{ $authorized_users };
# }

my $gitweb
    = Plack::App::WrapCGI->new(script => "$Bin/gitweb.cgi")->to_app;

builder {
    enable 'Static',
        path => qr{^/static/},
        root => $Bin;
    # enable "Auth::Basic",
    #     authenticator => \&is_authorized_user;
    mount '/' => $gitweb;
};

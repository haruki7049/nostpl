use strict;
use warnings;

use Test::More;
use WWW::Nostpl;

use_ok('Test::More');
use_ok('WWW::Nostpl');
use_ok('WWW::Nostpl::Event');

my $event = WWW::Nostpl::Event->new(
    id => '111111111111111111',
    content => 'This is a test content',
    sig => 'sha256',
    kind => 0,
    created_at => 0,
    tags => [
        "test_event"
    ],
);

done_testing;

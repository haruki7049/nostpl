package WWW::Nostpl::Event;

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use Moose qw( has );

has 'id' => (
    is  => 'ro',
    isa => 'Str',
    required => 1,
);

has 'content' => (
    is  => 'ro',
    isa => 'Str',
    required => 1,
);

has 'sig' => (
    is  => 'ro',
    isa => 'Str',
    required => 1,
);

has 'kind' => (
    is  => 'ro',
    isa => 'Int',
    required => 1,
);

has 'created_at' => (
    is  => 'ro',
    isa => 'Int',
    required => 1,
);

has 'tags' => (
    is  => 'ro',
    isa => 'ArrayRef[Str]',
    required => 1,
);

__PACKAGE__->meta->make_immutable;

1;

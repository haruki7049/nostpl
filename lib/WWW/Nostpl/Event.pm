package WWW::Nostpl::Event;

use strict;
use warnings;

use WWW::Nostpl::Types qw( Kind TimeStamp );
use Moose qw( has );

has 'id' => (
    is => 'ro',
    isa => 'Str',
);

has 'content' => (
    is => 'ro',
    isa => 'Str',
);

has 'sig' => (
    is => 'ro',
    isa => 'Str',
);

has 'kind' => (
    is => 'ro',
    isa => 'Kind',
);

has 'created_at' => (
    is => 'ro',
    isa => 'TimeStamp',
);

has 'tags' => (
    is => 'ro',
    isa => 'ArrayRef[Str]',
);

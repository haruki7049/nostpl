package WWW::Nostpl::Types;

use strict;
use warnings;

use Moose::Util::TypeConstraints qw( subtype as where );

use Exporter 'import';
our @EXPORT = qw( Kind );

subtype 'Kind', as 'Int', where { 0 <= $_ and $_ <= 65535 };

# TODO: Check Time::Piece module in order to express TimeStamp type
subtype 'TimeStamp', as 'Int', where { 0 <= $_ };

1;

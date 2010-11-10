#!/usr/bin/env perl

use strict;
use warnings qw(all);

use FindBin '$Bin';
use lib "$Bin/lib";

use Catalyst::Test 'TestApp';
use Test::More;

eval { require Catalyst::View::TT; 1 } ?
	plan tests => 4 :
	plan skip_all => 'Catalyst::View::TT not instaled'
;

like( get( '/button?value=ok'), qr'ok' );
like( get( '/button?value=ok&view=TT'), qr'ok' );
like( get( '/button?value=ok&extension=.tt2'), qr'ok' );
like( get( '/button?value=ok&template=widget/other.tt'), qr'ok' );


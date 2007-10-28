# $Id: function.t 282 2002-09-02 21:07:04Z comdog $

use Test::More tests => 2;
use Test::Data qw(Function);

sub fooey($$) { 1 }

prototype_ok( &fooey, '$$', 'Double scalar fooey' );
prototype_ok( &fooey, '$$' );


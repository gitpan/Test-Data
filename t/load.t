# $Id: load.t 2340 2007-10-28 01:47:34Z comdog $

use Test::More;

BEGIN { 
    @modules = qw( Test::Data Test::Data::Array Test::Data::Function 
    	Test::Data::Hash Test::Data::Function );
    plan tests => @modules * 2;
    

    foreach $module ( @modules ) {
		use_ok( $module );
	
		my $var = '$' . $module . '::VERSION';
		my $ver = eval $var;
		cmp_ok( $ver, '>', 0 );
		}
}

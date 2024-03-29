use ExtUtils::MakeMaker 6.48;

require 5.008;

eval "use Test::Manifest 1.21";

WriteMakefile (
	'NAME'          => 'Test::Data',
	'ABSTRACT'      => 'Test data type properties and values',
	'VERSION_FROM'  => 'lib/Test/Data.pm',
	'LICENSE'		=> 'perl',
	'AUTHOR'		=> 'brian d foy <bdfoy@cpan.org>',
        
	'PREREQ_PM' => {
		'List::Util'            => '0',
		'Scalar::Util'          => '0',
		'Test::Builder'         => '0',
		'Test::Builder::Tester' => '0',
		'Test::More'            => '0.95',
		},

	META_MERGE => {
		resources => {
			repository => 'https://github.com/briandfoy/test-data',
			}
		},
	
	clean  => { FILES => 'Test-Data-*' },
	);


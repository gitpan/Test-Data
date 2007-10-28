# $Id: pod.t 974 2003-11-24 15:41:22Z petdance $

use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();

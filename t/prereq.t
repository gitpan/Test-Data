# $Id: prereq.t,v 1.4 2004/02/28 12:57:28 comdog Exp $
local $^W = 0;
use Test::More;
eval "use Test::Prereq 0.51";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();

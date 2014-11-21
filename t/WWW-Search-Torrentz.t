#!/usr/bin/perl -w
use strict;
use warnings;

use WWW::Search::Test;
use Test::RequiresInternet qw/torrentz.eu 443/;
use Test::More tests => 10;

BEGIN { use_ok('WWW::Search::Torrentz') };

tm_new_engine('Torrentz');
tm_run_test(normal => $WWW::Search::Test::bogus_query, 0, 0);
tm_run_test(normal => 'linux', 20, undef);

done_testing;

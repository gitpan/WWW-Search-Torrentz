#!/usr/bin/perl -w
use strict;
use warnings;

use WWW::Search::Test;
use Test::More;
BEGIN { use_ok('WWW::Search::Torrentz') };

tm_new_engine('Torrentz');
tm_run_test(normal => $WWW::Search::Test::bogus_query, 0, 0);
tm_run_test(normal => 'linux', 100, undef);
tm_run_test(normal => '"Kubuntu Linux 13 04 Raring Ringtail 64 bit"', 1, 5, undef, 1);

done_testing;

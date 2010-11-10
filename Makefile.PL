use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Catalyst::Plugin::Widget',
    AUTHOR              => q{Oleg A. Mamontov <oleg@mamontov.net>},
    VERSION_FROM        => 'lib/Catalyst/Plugin/Widget.pm',
    ABSTRACT_FROM       => 'lib/Catalyst/Plugin/Widget.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Catalyst::Runtime' => 5.80029,
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Catalyst-Plugin-Widget-*' },
);


use strict;
use warnings;
use ExtUtils::MakeMaker;

eval 'use ExtUtils::MakeMaker::Coverage';
warn "Optional ExtUtils::MakeMaker::Coverage not available\n" if $@;

WriteMakefile(
  ( MM->can( 'signature_target' ) ? ( SIGN => 1 ) : () ),
  NAME          => 'Data::YAML',
  AUTHOR        => 'Andy Armstrong <andy@hexten.net>',
  LICENSE       => 'perl',
  VERSION_FROM  => 'lib/Data/YAML.pm',
  ABSTRACT_FROM => 'lib/Data/YAML.pm',
  PL_FILES      => {},
  PREREQ_PM     => {
    'Test::More' => 0,
    'version'    => 0,
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean => { FILES    => 'Data-YAML-*' },
);

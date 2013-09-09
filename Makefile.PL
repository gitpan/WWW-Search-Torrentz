use ExtUtils::MakeMaker;

WriteMakefile(
  NAME              => 'WWW::Search::Torrentz',
  VERSION_FROM      => 'lib/WWW/Search/Torrentz.pm',
  ABSTRACT_FROM     => 'lib/WWW/Search/Torrentz.pm',
  AUTHOR            => 'Marius Gavrilescu <marius@ieval.ro>',
  MIN_PERL_VERSION  => '5.14.0',
  LICENSE           => 'perl',
  PREREQ_PM         => {
	WWW::Search => 0,
  },
  BUILD_REQUIRES    => {
	WWW::Search::Test => 0,
  },
);

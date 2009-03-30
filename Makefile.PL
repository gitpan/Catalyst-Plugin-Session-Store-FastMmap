use ExtUtils::MakeMaker;
WriteMakefile
(
          'NAME' => 'Catalyst::Plugin::Session::Store::FastMmap',
          'VERSION_FROM' => 'lib/Catalyst/Plugin/Session/Store/FastMmap.pm',
          'PREREQ_PM' => {
                           'Cache::FastMmap' => '1.13',
                           'Catalyst::Plugin::Session' => '0.09',
                           'File::Spec' => '0',
                           'File::Temp' => '0',
                           'Path::Class' => '0',
                           'MRO::Compat' => '0',
                         },
          'INSTALLDIRS' => 'site',
          'EXE_FILES' => [],
          'PL_FILES' => {}
        )
;

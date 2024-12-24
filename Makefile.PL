use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'WWW::Nostpl',
    VERSION_FROM => 'lib/WWW/Nostpl.pm',
    AUTHOR       => 'haruki7049 <tontonkirikiri@gmail.com>',
    LICENSE      => 'MIT',
    test         => {
        RECURSIVE_TEST_FILES => 1,
    },
);

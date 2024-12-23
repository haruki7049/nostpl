use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'WWW::Nostpl',
    VERSION_FROM => 'lib/Nostpl.pm',
    AUTHOR => 'haruki7049 <tontonkirikiri@gmail.com>',
    LICENSE => 'MIT',
    test => {
        RECURSIVE_TEST_FILES => 1,
    },
);

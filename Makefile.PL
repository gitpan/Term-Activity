use ExtUtils::MakeMaker;

WriteMakefile(
  ABSTRACT => "Process Activity Display Module",
  AUTHOR   => 'Phil Pollard <bennie@cpan.org>',
  LICENSE  => 'artistic_2',
  NAME     => 'Term::Activity',
  VERSION  => '1.16',

  PREREQ_PM => {
          'Term::Size' => '0'
        },

  ( $ExtUtils::MakeMaker::VERSION < 6.46
        ? ()
        : ( META_MERGE => {
                'meta-spec' => { version => 2 },
                no_index => {directory => [qw/t/]},
                provides => {
                     'Term::Activity' => {
                          file    => 'lib/Term/Activity.pm',
                          version => '1.16'
                     }
                },
                release_status => 'stable',
                requires  => {perl => '5.006'},
                resources => {
                    repository => {
                        type => 'git',
                        url  => 'git://github.com/bennie/perl-Term-Activity.git',
                        web  => 'http://github.com/bennie/perl-Term-Activity',
                    },
                    bugtracker => {
                        web => 'https://rt.cpan.org/Dist/Display.html?Name=Term-Activity',
                    },

                },
            },
        )
    )

);
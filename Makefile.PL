
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "DZIL Author Bundle for BBYRD",
  "AUTHOR" => "Brendan Byrd <BBYRD\@CPAN.org>",
  "BUILD_REQUIRES" => {
    "Test::CheckDeps" => "0.002",
    "Test::UseAllModules" => "0.10"
  },
  "CONFIGURE_REQUIRES" => {},
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-BBYRD",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Dist::Zilla::PluginBundle::Author::BBYRD",
  "PREREQ_PM" => {
    "Dist::Zilla" => 0,
    "Dist::Zilla::Plugin::CheckExtraTests" => 0,
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => 0,
    "Dist::Zilla::Plugin::Clean" => 0,
    "Dist::Zilla::Plugin::CopyFilesFromBuild" => 0,
    "Dist::Zilla::Plugin::GitFmtChanges" => 0,
    "Dist::Zilla::Plugin::InstallGuide" => 0,
    "Dist::Zilla::Plugin::InstallRelease" => 0,
    "Dist::Zilla::Plugin::MetaProvides::Package" => 0,
    "Dist::Zilla::Plugin::MetaResourcesFromGit" => 0,
    "Dist::Zilla::Plugin::NoTabsTests" => 0,
    "Dist::Zilla::Plugin::OurPkgVersion" => 0,
    "Dist::Zilla::Plugin::PodWeaver" => 0,
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => 0,
    "Dist::Zilla::Plugin::ReportPhase" => 0,
    "Dist::Zilla::Plugin::ReportVersions::Tiny" => 0,
    "Dist::Zilla::Plugin::Test::CPAN::Meta::JSON" => 0,
    "Dist::Zilla::Plugin::Test::CheckDeps" => 0,
    "Dist::Zilla::Plugin::Test::CheckManifest" => 0,
    "Dist::Zilla::Plugin::Test::Compile" => 0,
    "Dist::Zilla::Plugin::Test::DistManifest" => 0,
    "Dist::Zilla::Plugin::Test::EOL" => 0,
    "Dist::Zilla::Plugin::Test::MinimumVersion" => 0,
    "Dist::Zilla::Plugin::Test::Portability" => 0,
    "Dist::Zilla::Plugin::Test::Synopsis" => 0,
    "Dist::Zilla::Plugin::Test::UseAllModules" => 0,
    "Dist::Zilla::Plugin::Test::Version" => 0,
    "Dist::Zilla::Plugin::TravisYML" => 0,
    "Dist::Zilla::PluginBundle::Git" => 0,
    "Dist::Zilla::PluginBundle::Git::CheckFor" => 0,
    "Dist::Zilla::PluginBundle::GitHub" => 0,
    "Dist::Zilla::PluginBundle::Prereqs" => 0,
    "Dist::Zilla::Role::PluginBundle::Merged" => "0.90",
    "Moose" => "0.34",
    "autovivification" => 0,
    "indirect" => 0,
    "multidimensional" => 0,
    "sanity" => "0.91"
  },
  "VERSION" => "0.90",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




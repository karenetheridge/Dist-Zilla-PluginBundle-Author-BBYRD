package Dist::Zilla::MintingProfile::Author::BBYRD;

# AUTHORITY
# VERSION
# ABSTRACT: DZIL MintingProfile for BBYRD

use sanity;
use Moose;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';

__PACKAGE__->meta->make_immutable;
42;

__END__

=begin wikidoc

= SYNOPSIS

   dzil new -P Author::BBYRD [distro_name]

= DESCRIPTION

This is a personalized Author minting profile for DZIL.

= NAMING SCHEME

I'm a strong believer in structured order in the chaos that is the CPAN
namespace.  There's enough cruft in CPAN, with all of the forked modules,
legacy stuff that should have been removed 10 years ago, and confusion over
which modules are available vs. which ones actually work.  (Which all stem
from the same base problem, so I'm almost repeating myself...)

Like I said, I hate writing these personalized modules on CPAN.  I even bantered
around the idea of using [MetaCPAN's author JSON input|https://github.com/SineSwiper/Dist-Zilla-PluginBundle-BeLike-You/blob/master/BeLike-You.pod]
to store the plugin data.  However, keeping the Author plugins separated from the
real PluginBundles is a step in the right direction.  See
[KENTNL's comments on the Author namespace|Dist::Zilla::PluginBundle::Author::KENTNL/NAMING-SCHEME]
for more information.

=end wikidoc

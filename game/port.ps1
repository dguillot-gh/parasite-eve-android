# Parasite Eve: what the build scripts need to know (dot-sourced by scripts\game-common.ps1).
$Game = 'parasite_eve_recomp'
$Package = 'com.psxrecomp.parasiteeve'
$Title = 'Parasite Eve'
# Only Disc 1 of 2 is tested so far: the other disc(s) are not listed yet.
# Supported dumps: the SHA-1 of each disc's data track (the first file its .cue names), in disc order.
$Supported = @(
    @{ Name = 'Parasite Eve (SLUS-00662)'
       Sha1 = @('c339455d5b1dae04f77c2ee847d0932adaf2e84b') }
)

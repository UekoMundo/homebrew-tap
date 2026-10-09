# UekoMundo Homebrew Tap

Homebrew formulae and casks for Vineel’s tools and apps. Kenkon is the source
of truth; this repository is its public distribution output. Mirror publishing
is manual, not automatic on every source change.

## Install

```sh
brew tap uekomundo/tap https://github.com/UekoMundo/homebrew-tap.git
brew install uekomundo/tap/vmn
brew install uekomundo/tap/vmp
brew install uekomundo/tap/checkout
brew install uekomundo/tap/rce
```

The tap downloads verified binaries directly from
[`UekoMundo/homebrew-tap` releases](https://github.com/UekoMundo/homebrew-tap/releases).
The same release assets are archived in
[`UekoMundo/repo`](https://github.com/UekoMundo/repo/releases). Package-prefixed
tags (for example `vmn-v0.3.5`) keep independent version histories separate.
`releases.json` records the archives, source repository, SHA-256, and both URLs.
Binaries are GitHub Release assets, **not files committed into the tap**.

## Availability

| Package                         | Type             | Status                                                                                 |
| ------------------------------- | ---------------- | -------------------------------------------------------------------------------------- |
| `vmn`                           | formula          | Latest verified stable published archives                                              |
| `vmp`                           | formula          | Latest verified stable published archives; platforms depend on release                 |
| `checkout`                      | formula          | Latest verified stable published archives                                              |
| `rce`                           | formula          | Latest verified stable published archives; do not downgrade from source manifest alone |
| `relay`                         | formula          | Disabled until a verified Kenkon binary release is published                           |
| `vault-sync`                    | formula          | Disabled until a verified Kenkon binary release is published                           |
| `powertools`                    | cask             | Disabled until a signed, notarized release is published                                |
| `distrodeck`                    | cask             | Disabled until a signed, notarized release is published                                |
| `downpour`, `keygate`, `vitals` | deprecated casks | Archived standalone releases; now included in PowerTools                               |

Do not install disabled entries or substitute a placeholder checksum. The legacy
casks remain available for existing installations; their PowerTools replacement
is not installable until its release is ready.

## Publishing

Edit the canonical definitions under Kenkon’s `homebrew-tap/`, not this mirror.
Use Kenkon’s release-distribution tooling to verify and archive historical public
releases. Use its **Release tools** workflow for fresh Rust builds and
**Release PowerTools** for signed/notarized PowerTools builds. Preview publishing
first; remote writes require an explicit publishing option and a token scoped
to both public repositories.

After assets are published, refresh Kenkon’s definitions from the complete
verified manifest with:

```sh
node .github/scripts/update-distribution-tap.mjs homebrew-tap/releases.json homebrew-tap
node .github/scripts/update-distribution-tap.mjs homebrew-tap/releases.json homebrew-tap --write
```

These commands run **inside Kenkon**. They default to a dry run and never invent
checksums or release versions. Commit reviewed canonical definitions before
running the manual `tap` mirror publish. Archiving assets does not automatically
push formula changes, activate a workflow, or deploy a signed Linux repository.

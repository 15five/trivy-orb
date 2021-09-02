# Trivy orb

[![CircleCI Build Status](https://circleci.com/gh/15five/trivy-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/15five/trivy-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/fifteen5/trivy-orb.svg)](https://circleci.com/orbs/registry/orb/fifteen5/trivy-orb) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/15five/trivy-orb/master/LICENSE)

A [Circleci](https://circleci.com) orb for running [Trivy](https://github.com/aquasecurity/trivy), a vulnerability scanner for docker images and more.

The orb can be found here: [CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/fifteen5/trivy-orb)

### How to Contribute

We welcome [issues](https://github.com/15five/trivy-orb/issues) to and [pull requests](https://github.com/15five/trivy-orb/pulls) against this repository!

### How to Publish
* Create and push a branch with your new features.
* When ready to publish a new production version, create a Pull Request from _feature branch_ to `master`.
* The title of the pull request must contain a special semver tag: `[semver:<segment>]` where `<segment>` is replaced by one of the following values.

| Increment | Description|
| ----------| -----------|
| major     | Issue a 1.0.0 incremented release|
| minor     | Issue a x.1.0 incremented release|
| patch     | Issue a x.x.1 incremented release|
| skip      | Do not issue a release|

Example: `[semver:major]`

* Squash and merge. Ensure the semver tag is preserved and entered as a part of the commit message.
* On merge, after manual approval, the orb will automatically be published to the Orb Registry.



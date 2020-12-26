# rebar3_undertone

[![Build Status][gh-actions-badge]][gh-actions] [![LFE Versions][lfe badge]][lfe] [![Erlang Versions][erlang badge]][versions] [![Tag][github tag badge]][github tag]

*A rebar3 plugin for undertone*

[![Project Logo][logo]][logo-large]

#### Contents

* [About](#about-)
* [Features](#features-)
* [Setup](#setup-)
* [Documentation](#documentation-)


## About [&#x219F;](#contents)

TBD

## Features [&#x219F;](#contents)

* Start up an undertone REPL:
  * `rebar3 undertone repl`

[More coming soon!](https://github.com/ut-proj/rebar3_undertone/issues?q=is%3Aissue+is%3Aopen+label%3Afeature)

## Setup [&#x219F;](#contents)

Add the plugin to your ``rebar.config`` (stable):

```erlang
{plugins, [
  {rebar3_undertone,
    {git, "https://github.com/ut-proj/rebar3_undertone.git", {branch, "main"}}}
]}.
```

Or, if you want to use the current development branch (unstable):

```erlang
{plugins, [
  {rebar3_undertone,
    {git, "https://github.com/ut-proj/rebar3_undertone.git", {branch, "release/0.1.x"}}}
]}.
```

## Documentation [&#x219F;](#contents)

As features stabilize, documentation will be provided in the
[LFE Music Programming Book](undertone.lfe.io/book).

[//]: ---Named-Links---

[logo]: https://avatars2.githubusercontent.com/u/15242004?s=250
[logo-large]: https://avatars2.githubusercontent.com/u/15242004
[github]: https://github.com/ut-proj/rebar3_undertone
[gitlab]: https://gitlab.com/ut-proj/rebar3_undertone
[gh-actions-badge]: https://github.com/ut-proj/rebar3_undertone/workflows/ci%2Fcd/badge.svg
[gh-actions]: https://github.com/ut-proj/rebar3_undertone/actions
[lfe]: https://github.com/rvirding/lfe
[lfe]: https://github.com/rvirding/lfe
[lfe badge]: https://img.shields.io/badge/lfe-2.0.0%E2%88%92dev-blue.svg
[erlang badge]: https://img.shields.io/badge/erlang-21%E2%88%9223-blue.svg
[versions]: https://github.com/ut-proj/rebar3_undertone/blob/master/.travis.yml
[github tag]: https://github.com/ut-proj/rebar3_undertone/tags
[github tag badge]: https://img.shields.io/github/tag/ut-proj/rebar3_undertone.svg
[github downloads]: https://img.shields.io/github/downloads/atom/atom/total.svg
[hex badge]: https://img.shields.io/hexpm/v/rebar3_undertone.svg?maxAge=2592000
[hex package]: https://hex.pm/packages/rebar3_undertone
[hex downloads]: https://img.shields.io/hexpm/dt/rebar3_undertone.svg


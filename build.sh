#!/bin/bash
rm -rf sparrow-vs-0.1.0.vsix
rm -rf sparrow-ls-release

asdf global erlang 19.3.6.9
asdf global elixir 1.7.0
cd sparrow-ls && mix deps.get && mix compile
cd ..
vsce package
asdf global erlang 21.3
asdf global elixir 1.8.1
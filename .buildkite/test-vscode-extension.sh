#!/bin/bash

set -euo pipefail

brew install yarn

pushd vscode_extension
yarn
yarn test

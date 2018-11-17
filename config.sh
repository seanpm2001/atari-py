#!/bin/bash
function pre_build {
    set -ex
    build_zlib
    pip install cmake
    pip install .
    pip install pytest
    pytest .
}

function run_tests {
    python -c "import gym; gym.make('Pong-v4')"
}


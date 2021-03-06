#!/bin/bash
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Convenience binary to build TFDV from source.

# Put wrapped c++ files in place

set -u -x

cp -f tensorflow_data_validation/pywrap/pywrap_tensorflow_data_validation.py \
  ${BUILD_WORKSPACE_DIRECTORY}/tensorflow_data_validation/pywrap
cp -f tensorflow_data_validation/pywrap/_pywrap_tensorflow_data_validation.so \
  ${BUILD_WORKSPACE_DIRECTORY}/tensorflow_data_validation/pywrap

# Create the wheel
cd ${BUILD_WORKSPACE_DIRECTORY}

python setup.py bdist_wheel

# Cleanup
cd -

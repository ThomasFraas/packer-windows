#!/bin/bash

if [ -f windows_2012_r2_core_virtualbox.box ]; then
  rm windows_2012_r2_core_virtualbox.box
fi

packer build -only=virtualbox-iso windows_2012_r2_core.json

if [ -f windows_2012_r2_core_virtualbox.box ]; then
  vagrant box remove windows_2012_r2_core_
  vagrant box add windows_2012_r2_core_windows_2012_r2_core_virtualbox.box 
fi
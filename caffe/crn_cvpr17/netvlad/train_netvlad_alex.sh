#!/usr/bin/env sh

TOOLS=./build/tools

THISFOLDER=crn_cvpr17/netvlad

$TOOLS/caffe train --weights=$THISFOLDER/initialization/caffe_pitts_netvlad_with_alex.caffemodel --solver=$THISFOLDER/solver_netvlad_train_alex.prototxt







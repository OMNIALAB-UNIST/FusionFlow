#!/bin/bash
SHELL=`basename "$0"`

if [ $# != 0 ]; then
    echo "$SHELL: USAGE: $SHELL"
    exit 1
fi
CUR_DIR="./"
SCRIPT_DIR="$CUR_DIR/scripts"
DATADIR="/data"
SCRIPT="thru_py_wrapper.sh"

#############
#           #
# 6GPUInter #
#           #
#############

TYPE="DDP6GPUInter"; NUM_GPU=6; EPOCH=2; WORKERS=4; 
WORKERS=$(($WORKERS*$NUM_GPU)) # GPU scaling


DATAFOLDER="openimage"; EPOCH=1 # for fast test
DATASET=$DATADIR/$DATAFOLDER

MODEL="resnet50";

BATCH=240
BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# # # $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # sleep 30s
# # # $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # sleep 30s
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE  $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffloadSingleSamp $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # sleep 30s
# # # sleep 30s
# # # $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment



# MODEL="resnet18";

# BATCH=500
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# # sleep 30s
# # $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment



BATCH=88
BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
MODEL="vit-base"
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffloadSingleSamp $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment

# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment


# # BATCH=100
# # BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
# # MODEL="coatnet-0"
# # $SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# # $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# # # # $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # # sleep 30s
# # # # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # # sleep 30s
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # sleep 30s
# # # $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment





# DATAFOLDER="Imagenet"; EPOCH=1 # for fast test
# DATASET=$DATADIR/$DATAFOLDER


# # MODEL="resnet50";

# # BATCH=240
# # BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# # $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment

# # BATCH=88
# # BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
# # MODEL="vit-base"
# # $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment


# MODEL="resnet18";

# BATCH=500
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment




TYPE="SINGLE"; NUM_GPU=1; EPOCH=1; WORKERS=4; 
WORKERS=$(($WORKERS*$NUM_GPU)) # GPU scaling


DATAFOLDER="openimage"; EPOCH=1 # for fast test
DATASET=$DATADIR/$DATAFOLDER

MODEL="resnet50";

BATCH=240
BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
$SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
$SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
$SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
# sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment



MODEL="resnet18";

BATCH=500
BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
$SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
$SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
$SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
# sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment



BATCH=88
BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
MODEL="vit-base"
# sleep 30s
$SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
$SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
$SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment


# BATCH=100
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
# MODEL="coatnet-0"
# $SCRIPT_DIR/$SCRIPT $TYPE GPUonlyNaive $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
# # # $SCRIPT_DIR/$SCRIPT $TYPE GPUonly $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # sleep 30s
# # # $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# # # sleep 30s
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# sleep 30s
# # $SCRIPT_DIR/$SCRIPT $TYPE tfdata $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment





# TYPE="DDP6GPUInter"; NUM_GPU=6; EPOCH=1; WORKERS=4; 
# WORKERS=$(($WORKERS*$NUM_GPU)) # GPU scaling



# DATAFOLDER="synth_inat"; EPOCH=1 # for fast test
# DATASET=$DATADIR/$DATAFOLDER


# MODEL="resnet50";
# BATCH=240
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment


# MODEL="vit-base"
# BATCH=88
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling 
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggr $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment



# MODEL="resnet18";
# BATCH=500
# BATCH=$(($BATCH*$NUM_GPU)) # GPU scaling
# $SCRIPT_DIR/$SCRIPT $TYPE baseline $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment
# $SCRIPT_DIR/$SCRIPT $TYPE CPUPolicyGPUDirectAggrOffload $DATASET $MODEL $EPOCH $BATCH $WORKERS 4 autoaugment

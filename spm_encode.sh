#!/bin/bash

SPM='./sentencepiece/build/src/spm_encode'
MODEL='tokenizer/spm.model'
DATA='dataset'
TRAIN='train'
TEST='test'
SRC='de'
TGT='hsb'

$SPM --model=$MODEL < ${DATA}/${TRAIN}.${SRC} > ${DATA}/${TRAIN}.spm.${SRC} &
$SPM --model=$MODEL < ${DATA}/${TRAIN}.${TGT} > ${DATA}/${TRAIN}.spm.${TGT} &
$SPM --model=$MODEL < ${DATA}/${TEST}.${SRC} > ${DATA}/${TEST}.spm.${SRC} &
$SPM --model=$MODEL < ${DATA}/${TEST}.${TGT} > ${DATA}/${TEST}.spm.${TGT} &
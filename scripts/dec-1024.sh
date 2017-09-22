# export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
# export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
# export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
# export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt

export DATA_HOME=${HOME}/stuff/project/data/exp-data/train/wiki-roman
export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-roman/targets-small.txt



export MODEL_NAME=1024-s2s-fce-lang8
export MODEL_DIR=/cluster/project2/mr/skasewa/models/${MODEL_NAME}

export DATASET_NAME=wrsc-f
export MODEL=50002
export TEST_PREDS=${MODEL_DIR}/corruptions/${DATASET_NAME}-${MODEL}.txt

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-${MODEL} \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "argmax" \
  >  $TEST_PREDS
 
python3 $TSV_MAKER ${DATA_HOME}/${DATASET_NAME} 1 $TEST_PREDS $TEST_SOURCES &
echo "Predictions ${TEST_PREDS} written"


export DATASET_NAME=wrsc-g
export MODEL=50002
export TEST_PREDS=${MODEL_DIR}/corruptions/${DATASET_NAME}-${MODEL}.txt

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-${MODEL} \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  $TEST_PREDS

python3 $TSV_MAKER ${DATA_HOME}/${DATASET_NAME} 1 $TEST_PREDS $TEST_SOURCES &
echo "Predictions ${TEST_PREDS} written"



export MODEL_NAME=1024-s2s-fce-lang8-small
export MODEL_DIR=/cluster/project2/mr/skasewa/models/${MODEL_NAME}

export DATASET_NAME=wrsc-h
export MODEL=47000
export TEST_PREDS=${MODEL_DIR}/corruptions/${DATASET_NAME}-${MODEL}.txt

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-${MODEL} \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "argmax" \
  >  $TEST_PREDS
 
python3 $TSV_MAKER ${DATA_HOME}/${DATASET_NAME} 1 $TEST_PREDS $TEST_SOURCES &
echo "Predictions ${TEST_PREDS} written"


export DATASET_NAME=wrsc-i
export MODEL=47000
export TEST_PREDS=${MODEL_DIR}/corruptions/${DATASET_NAME}-${MODEL}.txt

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-${MODEL} \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  --sampler "multinomial" \
  --temp 0.5 \
  >  $TEST_PREDS

python3 $TSV_MAKER ${DATA_HOME}/${DATASET_NAME} 1 $TEST_PREDS $TEST_SOURCES &
echo "Predictions ${TEST_PREDS} written"


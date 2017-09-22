# export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
# export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
# export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
# export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt

export DATA_HOME=${HOME}/stuff/project/data/exp-data/train/wiki-roman
export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-roman/targets-small.txt

export MODEL_NAME=s2s-fce
export MODEL_DIR=/cluster/project2/mr/skasewa/models/${MODEL_NAME}


export DATASET_NAME=fcec-sampler-test3
export MODEL=104000
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
  --temp 0.000000000001 \
  >  $TEST_PREDS
 
echo "Predictions from Model ${MODEL} written"

export DATASET_NAME=fcec-sampler-test4
export MODEL=104000
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
  --temp 0.1 \
  >  $TEST_PREDS
 
echo "Predictions from Model ${MODEL} written"


export DATASET_NAME=fcec-sampler-test5
export MODEL=104000
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
 
echo "Predictions from Model ${MODEL} written"

#python3 $TSV_MAKER ${DATA_HOME}/${DATASET_NAME} 1 $TEST_PREDS $TEST_SOURCES &


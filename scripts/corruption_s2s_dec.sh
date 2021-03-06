export VOCAB_SOURCE=${HOME}/stuff/project/data/parsed_fce/train/vocab.targets.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/parsed_fce/train/vocab.sources.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/parsed_fce/train/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/parsed_fce/train/sources.txt
export DEV_SOURCES=${HOME}/stuff/project/data/parsed_fce/dev/targets.txt
export DEV_TARGETS=${HOME}/stuff/project/data/parsed_fce/dev/sources.txt

export DEV_TARGETS_REF=${HOME}/stuff/project/data/parsed_fce/dev/sources.txt
export TRAIN_STEPS=50000

export MODEL_DIR=${HOME}/stuff/project/models/nmt/corruption_s2s

export TEST_SOURCES=${HOME}/stuff/project/dev/wiki/targets.txt  
export PRED_DIR=${HOME}/stuff/project/dev/wiki
mkdir -p ${PRED_DIR}

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/wikicorruptions.txt
echo "Predictions written!"

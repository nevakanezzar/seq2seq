export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt
export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce-lang8
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-roman/targets-small.txt


python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-140003 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce-lang8/corruptions/wrspred140000.tmp
 
echo "Predictions from Model 140000 written"


python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-150003 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce-lang8/corruptions/wrspred150000.tmp
 
echo "Predictions from Model 150000 written"


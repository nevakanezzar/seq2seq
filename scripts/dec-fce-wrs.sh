#export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
#export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
#export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
#export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt

export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/train/wiki-roman/targets-small.txt

export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce-lang8

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-180003 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce-lang8/corruptions/wrspred180003.txt
 
echo "Predictions from Model 180000 written"


python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-190003 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce-lang8/corruptions/wrspred190003.txt
 
echo "Predictions from Model 190000 written"



export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce

python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-219000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/wrspred219000.txt
 
echo "Predictions from Model 219000 written"


python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/wrspred104000.txt
 
echo "Predictions from Model 104000 written"



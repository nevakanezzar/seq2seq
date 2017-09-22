export FCE_TSV=${HOME}/stuff/project/data/exp-data/train/fce/fce-public.train.original.tsv

export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt

export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce

export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
export PRED_DIR=${HOME}/stuff/project/data/exp-data/s2s/train/fce/
mkdir -p ${PRED_DIR}

export TSV_MAKER=${HOME}/stuff/project/dev/create_many_tsv.py

python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-100000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/fce.pred21.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/fce.pred21 1 ${PRED_DIR}/fce.pred21.txt $TEST_SOURCES


python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-102000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/fce.pred22.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/fce.pred22 1 ${PRED_DIR}/fce.pred22.txt $TEST_SOURCES


python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/fce.pred23.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/fce.pred23 1 ${PRED_DIR}/fce.pred23.txt $TEST_SOURCES


export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/test/evp/targets.txt

python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-100000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/evp.pred21.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/evp.pred21 1 ${PRED_DIR}/evp.pred21.txt $TEST_SOURCES


python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-102000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/evp.pred22.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/evp.pred22 1 ${PRED_DIR}/evp.pred22.txt $TEST_SOURCES


python3 -m bin.infer \
  --tasks "
    - class: DecodeText 
      params:
        unk_replace: True"\
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-104000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  ${PRED_DIR}/evp.pred23.txt
echo "1st prediction set written!"

python3 $TSV_MAKER ${PRED_DIR}/evp.pred23 1 ${PRED_DIR}/evp.pred23.txt $TEST_SOURCES



cat $FCE_TSV fce.pred21.tsv fce.pred22.tsv fce.pred23.tsv > fce0123.pred2.tsv
cat fce0123.pred2.tsv evp.pred21.tsv evp.pred22.tsv evp.pred23.tsv > fce0123-evp123.pred2.tsv

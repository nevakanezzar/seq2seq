export VOCAB_SOURCE=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export VOCAB_TARGET=${HOME}/stuff/project/data/exp-data/s2s/train/fce/vocab.combined.txt
export TRAIN_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
export TRAIN_TARGETS=${HOME}/stuff/project/data/exp-data/s2s/train/fce/sources.txt
export MODEL_DIR=/cluster/project2/mr/skasewa/models/s2s-fce
export TEST_SOURCES=${HOME}/stuff/project/data/exp-data/s2s/train/fce/targets.txt
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-1000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred1000.txt
 
echo "Predictions from Model 1000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-2000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred2000.txt
 
echo "Predictions from Model 2000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-3000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred3000.txt
 
echo "Predictions from Model 3000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-4000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred4000.txt
 
echo "Predictions from Model 4000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-5000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred5000.txt
 
echo "Predictions from Model 5000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-6000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred6000.txt
 
echo "Predictions from Model 6000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-7000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred7000.txt
 
echo "Predictions from Model 7000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-8000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred8000.txt
 
echo "Predictions from Model 8000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-9000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred9000.txt
 
echo "Predictions from Model 9000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-10000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred10000.txt
 
echo "Predictions from Model 10000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-11000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred11000.txt
 
echo "Predictions from Model 11000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-12000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred12000.txt
 
echo "Predictions from Model 12000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-13000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred13000.txt
 
echo "Predictions from Model 13000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-14000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred14000.txt
 
echo "Predictions from Model 14000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-15000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred15000.txt
 
echo "Predictions from Model 15000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-16000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred16000.txt
 
echo "Predictions from Model 16000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-17000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred17000.txt
 
echo "Predictions from Model 17000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-18000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred18000.txt
 
echo "Predictions from Model 18000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-19000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred19000.txt
 
echo "Predictions from Model 19000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-20000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred20000.txt
 
echo "Predictions from Model 20000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-21000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred21000.txt
 
echo "Predictions from Model 21000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-22000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred22000.txt
 
echo "Predictions from Model 22000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-23000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred23000.txt
 
echo "Predictions from Model 23000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-24000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred24000.txt
 
echo "Predictions from Model 24000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-25000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred25000.txt
 
echo "Predictions from Model 25000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-26000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred26000.txt
 
echo "Predictions from Model 26000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-27000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred27000.txt
 
echo "Predictions from Model 27000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-28000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred28000.txt
 
echo "Predictions from Model 28000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-29000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred29000.txt
 
echo "Predictions from Model 29000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-30000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred30000.txt
 
echo "Predictions from Model 30000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-31000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred31000.txt
 
echo "Predictions from Model 31000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-32000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred32000.txt
 
echo "Predictions from Model 32000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-33000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred33000.txt
 
echo "Predictions from Model 33000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-34000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred34000.txt
 
echo "Predictions from Model 34000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-35000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred35000.txt
 
echo "Predictions from Model 35000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-36000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred36000.txt
 
echo "Predictions from Model 36000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-37000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred37000.txt
 
echo "Predictions from Model 37000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-38000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred38000.txt
 
echo "Predictions from Model 38000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-39000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred39000.txt
 
echo "Predictions from Model 39000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-40000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred40000.txt
 
echo "Predictions from Model 40000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-41000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred41000.txt
 
echo "Predictions from Model 41000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-42000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred42000.txt
 
echo "Predictions from Model 42000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-43000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred43000.txt
 
echo "Predictions from Model 43000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-44000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred44000.txt
 
echo "Predictions from Model 44000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-45000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred45000.txt
 
echo "Predictions from Model 45000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-46000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred46000.txt
 
echo "Predictions from Model 46000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-47000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred47000.txt
 
echo "Predictions from Model 47000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-48000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred48000.txt
 
echo "Predictions from Model 48000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-49000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred49000.txt
 
echo "Predictions from Model 49000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-50000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred50000.txt
 
echo "Predictions from Model 50000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-51000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred51000.txt
 
echo "Predictions from Model 51000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-52000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred52000.txt
 
echo "Predictions from Model 52000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-53000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred53000.txt
 
echo "Predictions from Model 53000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-54000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred54000.txt
 
echo "Predictions from Model 54000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-55000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred55000.txt
 
echo "Predictions from Model 55000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-56000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred56000.txt
 
echo "Predictions from Model 56000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-57000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred57000.txt
 
echo "Predictions from Model 57000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-58000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred58000.txt
 
echo "Predictions from Model 58000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-59000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred59000.txt
 
echo "Predictions from Model 59000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-60000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred60000.txt
 
echo "Predictions from Model 60000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-61000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred61000.txt
 
echo "Predictions from Model 61000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-62000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred62000.txt
 
echo "Predictions from Model 62000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-63000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred63000.txt
 
echo "Predictions from Model 63000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-64000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred64000.txt
 
echo "Predictions from Model 64000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-65000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred65000.txt
 
echo "Predictions from Model 65000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-66000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred66000.txt
 
echo "Predictions from Model 66000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-67000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred67000.txt
 
echo "Predictions from Model 67000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-68000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred68000.txt
 
echo "Predictions from Model 68000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-69000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred69000.txt
 
echo "Predictions from Model 69000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-70000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred70000.txt
 
echo "Predictions from Model 70000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-71000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred71000.txt
 
echo "Predictions from Model 71000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-72000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred72000.txt
 
echo "Predictions from Model 72000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-73000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred73000.txt
 
echo "Predictions from Model 73000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-74000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred74000.txt
 
echo "Predictions from Model 74000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-75000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred75000.txt
 
echo "Predictions from Model 75000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-76000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred76000.txt
 
echo "Predictions from Model 76000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-77000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred77000.txt
 
echo "Predictions from Model 77000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-78000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred78000.txt
 
echo "Predictions from Model 78000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-79000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred79000.txt
 
echo "Predictions from Model 79000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-80000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred80000.txt
 
echo "Predictions from Model 80000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-81000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred81000.txt
 
echo "Predictions from Model 81000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-82000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred82000.txt
 
echo "Predictions from Model 82000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-83000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred83000.txt
 
echo "Predictions from Model 83000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-84000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred84000.txt
 
echo "Predictions from Model 84000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-85000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred85000.txt
 
echo "Predictions from Model 85000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-86000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred86000.txt
 
echo "Predictions from Model 86000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-87000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred87000.txt
 
echo "Predictions from Model 87000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-88000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred88000.txt
 
echo "Predictions from Model 88000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-89000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred89000.txt
 
echo "Predictions from Model 89000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-90000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred90000.txt
 
echo "Predictions from Model 90000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-91000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred91000.txt
 
echo "Predictions from Model 91000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-92000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred92000.txt
 
echo "Predictions from Model 92000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-93000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred93000.txt
 
echo "Predictions from Model 93000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-94000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred94000.txt
 
echo "Predictions from Model 94000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-95000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred95000.txt
 
echo "Predictions from Model 95000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-96000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred96000.txt
 
echo "Predictions from Model 96000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-97000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred97000.txt
 
echo "Predictions from Model 97000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-98000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred98000.txt
 
echo "Predictions from Model 98000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-99000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred99000.txt
 
echo "Predictions from Model 99000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-100000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred100000.txt
 
echo "Predictions from Model 100000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-101000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred101000.txt
 
echo "Predictions from Model 101000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-102000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred102000.txt
 
echo "Predictions from Model 102000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-103000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred103000.txt
 
echo "Predictions from Model 103000 written"
 
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
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred104000.txt
 
echo "Predictions from Model 104000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-105000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred105000.txt
 
echo "Predictions from Model 105000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-106000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred106000.txt
 
echo "Predictions from Model 106000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-107000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred107000.txt
 
echo "Predictions from Model 107000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-108000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred108000.txt
 
echo "Predictions from Model 108000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-109000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred109000.txt
 
echo "Predictions from Model 109000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-110000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred110000.txt
 
echo "Predictions from Model 110000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-111000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred111000.txt
 
echo "Predictions from Model 111000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-112000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred112000.txt
 
echo "Predictions from Model 112000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-113000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred113000.txt
 
echo "Predictions from Model 113000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-114000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred114000.txt
 
echo "Predictions from Model 114000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-115000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred115000.txt
 
echo "Predictions from Model 115000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-116000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred116000.txt
 
echo "Predictions from Model 116000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-117000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred117000.txt
 
echo "Predictions from Model 117000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-118000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred118000.txt
 
echo "Predictions from Model 118000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-119000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred119000.txt
 
echo "Predictions from Model 119000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-120000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred120000.txt
 
echo "Predictions from Model 120000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-121000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred121000.txt
 
echo "Predictions from Model 121000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-122000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred122000.txt
 
echo "Predictions from Model 122000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-123000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred123000.txt
 
echo "Predictions from Model 123000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-124000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred124000.txt
 
echo "Predictions from Model 124000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-125000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred125000.txt
 
echo "Predictions from Model 125000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-126000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred126000.txt
 
echo "Predictions from Model 126000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-127000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred127000.txt
 
echo "Predictions from Model 127000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-128000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred128000.txt
 
echo "Predictions from Model 128000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-129000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred129000.txt
 
echo "Predictions from Model 129000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-130000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred130000.txt
 
echo "Predictions from Model 130000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-131000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred131000.txt
 
echo "Predictions from Model 131000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-132000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred132000.txt
 
echo "Predictions from Model 132000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-133000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred133000.txt
 
echo "Predictions from Model 133000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-134000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred134000.txt
 
echo "Predictions from Model 134000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-135000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred135000.txt
 
echo "Predictions from Model 135000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-136000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred136000.txt
 
echo "Predictions from Model 136000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-137000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred137000.txt
 
echo "Predictions from Model 137000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-138000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred138000.txt
 
echo "Predictions from Model 138000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-139000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred139000.txt
 
echo "Predictions from Model 139000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-140000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred140000.txt
 
echo "Predictions from Model 140000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-141000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred141000.txt
 
echo "Predictions from Model 141000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-142000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred142000.txt
 
echo "Predictions from Model 142000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-143000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred143000.txt
 
echo "Predictions from Model 143000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-144000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred144000.txt
 
echo "Predictions from Model 144000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-145000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred145000.txt
 
echo "Predictions from Model 145000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-146000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred146000.txt
 
echo "Predictions from Model 146000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-147000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred147000.txt
 
echo "Predictions from Model 147000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-148000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred148000.txt
 
echo "Predictions from Model 148000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-149000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred149000.txt
 
echo "Predictions from Model 149000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-150000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred150000.txt
 
echo "Predictions from Model 150000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-151000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred151000.txt
 
echo "Predictions from Model 151000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-152000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred152000.txt
 
echo "Predictions from Model 152000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-153000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred153000.txt
 
echo "Predictions from Model 153000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-154000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred154000.txt
 
echo "Predictions from Model 154000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-155000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred155000.txt
 
echo "Predictions from Model 155000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-156000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred156000.txt
 
echo "Predictions from Model 156000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-157000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred157000.txt
 
echo "Predictions from Model 157000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-158000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred158000.txt
 
echo "Predictions from Model 158000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-159000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred159000.txt
 
echo "Predictions from Model 159000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-160000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred160000.txt
 
echo "Predictions from Model 160000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-161000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred161000.txt
 
echo "Predictions from Model 161000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-162000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred162000.txt
 
echo "Predictions from Model 162000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-163000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred163000.txt
 
echo "Predictions from Model 163000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-164000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred164000.txt
 
echo "Predictions from Model 164000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-165000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred165000.txt
 
echo "Predictions from Model 165000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-166000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred166000.txt
 
echo "Predictions from Model 166000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-167000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred167000.txt
 
echo "Predictions from Model 167000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-168000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred168000.txt
 
echo "Predictions from Model 168000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-169000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred169000.txt
 
echo "Predictions from Model 169000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-170000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred170000.txt
 
echo "Predictions from Model 170000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-171000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred171000.txt
 
echo "Predictions from Model 171000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-172000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred172000.txt
 
echo "Predictions from Model 172000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-173000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred173000.txt
 
echo "Predictions from Model 173000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-174000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred174000.txt
 
echo "Predictions from Model 174000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-175000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred175000.txt
 
echo "Predictions from Model 175000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-176000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred176000.txt
 
echo "Predictions from Model 176000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-177000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred177000.txt
 
echo "Predictions from Model 177000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-178000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred178000.txt
 
echo "Predictions from Model 178000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-179000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred179000.txt
 
echo "Predictions from Model 179000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-180000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred180000.txt
 
echo "Predictions from Model 180000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-181000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred181000.txt
 
echo "Predictions from Model 181000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-182000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred182000.txt
 
echo "Predictions from Model 182000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-183000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred183000.txt
 
echo "Predictions from Model 183000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-184000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred184000.txt
 
echo "Predictions from Model 184000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-185000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred185000.txt
 
echo "Predictions from Model 185000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-186000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred186000.txt
 
echo "Predictions from Model 186000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-187000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred187000.txt
 
echo "Predictions from Model 187000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-188000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred188000.txt
 
echo "Predictions from Model 188000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-189000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred189000.txt
 
echo "Predictions from Model 189000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-190000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred190000.txt
 
echo "Predictions from Model 190000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-191000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred191000.txt
 
echo "Predictions from Model 191000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-192000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred192000.txt
 
echo "Predictions from Model 192000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-193000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred193000.txt
 
echo "Predictions from Model 193000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-194000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred194000.txt
 
echo "Predictions from Model 194000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-195000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred195000.txt
 
echo "Predictions from Model 195000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-196000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred196000.txt
 
echo "Predictions from Model 196000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-197000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred197000.txt
 
echo "Predictions from Model 197000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-198000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred198000.txt
 
echo "Predictions from Model 198000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-199000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred199000.txt
 
echo "Predictions from Model 199000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-200000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred200000.txt
 
echo "Predictions from Model 200000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-201000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred201000.txt
 
echo "Predictions from Model 201000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-202000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred202000.txt
 
echo "Predictions from Model 202000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-203000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred203000.txt
 
echo "Predictions from Model 203000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-204000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred204000.txt
 
echo "Predictions from Model 204000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-205000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred205000.txt
 
echo "Predictions from Model 205000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-206000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred206000.txt
 
echo "Predictions from Model 206000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-207000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred207000.txt
 
echo "Predictions from Model 207000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-208000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred208000.txt
 
echo "Predictions from Model 208000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-209000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred209000.txt
 
echo "Predictions from Model 209000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-210000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred210000.txt
 
echo "Predictions from Model 210000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-211000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred211000.txt
 
echo "Predictions from Model 211000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-212000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred212000.txt
 
echo "Predictions from Model 212000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-213000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred213000.txt
 
echo "Predictions from Model 213000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-214000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred214000.txt
 
echo "Predictions from Model 214000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-215000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred215000.txt
 
echo "Predictions from Model 215000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-216000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred216000.txt
 
echo "Predictions from Model 216000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-217000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred217000.txt
 
echo "Predictions from Model 217000 written"
 
python3 -m bin.infer \
  --tasks "
    - class: DecodeText
      params:
        unk_replace: True" \
  --model_dir $MODEL_DIR \
  --checkpoint_path ${MODEL_DIR}/model.ckpt-218000 \
  --input_pipeline "
    class: ParallelTextInputPipeline
    params:
      source_files:
        - $TEST_SOURCES" \
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred218000.txt
 
echo "Predictions from Model 218000 written"
 
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
  >  /cluster/project2/mr/skasewa/models/s2s-fce/corruptions/fcepred219000.txt
 
echo "Predictions from Model 219000 written"

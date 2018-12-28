#CHECKPOINT_PATH="/home/eugene/dip/pstmodel/in2txt5/model.ckpt-5000000"
#CHECKPOINT_PATH="/home/eugene/dip/pstmodel/model.ckpt-2000000"
#CHECKPOINT_PATH="/home/eugene/dip/pstmodel/in2txt1/model.ckpt-1000000"
#CHECKPOINT_PATH="/home/eugene/dip/pstmodel/in2txt5/model2.ckpt-5000000"
rm -rf /home/eugene/Pictures/test/*

python vi.py

CHECKPOINT_PATH="/home/eugene/dip/pstmodel/model2.ckpt-2000000"


VOCAB_FILE="/home/eugene/dip/pstmodel/word_counts.txt"

#IMAGE_FILE="/home/eugene/Pictures/h.jpg,/home/eugene/Pictures/k.jpg"
IMAGE_FILE="/home/eugene/Pictures/test/*.jpg"

# Build the inference binary.
#bazel build -c opt im2txt/run_inference
cd /home/eugene/dip/models/research/im2txt
bazel build -c opt //im2txt:run_inference

#export CUDA_VISIBLE_DEVICES=""

# Run inference to generate captions.
bazel-bin/im2txt/run_inference \
  --checkpoint_path=${CHECKPOINT_PATH} \
  --vocab_file=${VOCAB_FILE} \
  --input_files=${IMAGE_FILE}

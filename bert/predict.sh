#!/bin/sh

export BERT_BASE_DIR=./bert_weights
export TRAINED_CLASSIFIER=./bert_output/model.ckpt-<INSERT HIGHEST CHECKPOINT NUMBER HERE>
python bert/run_classifier.py \
--task_name=cola \
--do_predict=true \
--data_dir=./data \
--vocab_file=$BERT_BASE_DIR/vocab.txt \
--bert_config_file=$BERT_BASE_DIR/bert_config.json \
--init_checkpoint=$TRAINED_CLASSIFIER \
--max_seq_length=128 \
--output_dir=./bert_output/

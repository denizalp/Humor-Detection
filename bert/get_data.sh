#!/bin/sh

wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip
unzip uncased_L-12_H-768_A-12.zip
mv uncased_L-12_H-768_A-12 bert_weights
rm uncased_L-12_H-768_A-12.zip 

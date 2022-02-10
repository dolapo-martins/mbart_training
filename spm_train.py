import sys
import sentencepiece as spm


INPUT_FILES = sys.argv[1]
MODEL_NAME = sys.argv[2]
VOCAB_SIZE = sys.argv[3]

spm.SentencePieceTrainer.Train(input=INPUT_FILES, model_prefix=MODEL_NAME, vocab_size=VOCAB_SIZE)
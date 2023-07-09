## Introduction
- We totally collect 1) 18 data augmentation methods from code data, and 2) 7 data augmentation methods from NLP, and build this project on the top of [ALERT project](https://github.com/soarsmu/attack-pretrain-models-of-code) and [Project_CodeNet](https://github.com/IBM/Project_CodeNet). Please refer to these projects for more details.

- We modify all 7 data augmentation methodes from NLP to adapt to source code. 
```
|-Data augmentation methods 
    |-—Files structure
    |    |-Back Translation (BT) --> BT.py
    |    |  
    |    |-Synonym Replacement (SR) --> eda4code.py
    |    | 
    |    |-Random Deletion (RD) --> eda4code.py
    |    | 
    |    |-Random Insertion (RI) --> eda4code.py
    |    | 
    |    |-Random Swap (RS) --> RS.py
    |    | 
    |    |-Mixup Augmentation(WordMixp, SenMixup, and Manifold-Mixup) --> Mixup.py
    |-DONE
```

## Requirements
On Ubuntu:
the following software packages are dependencies and will be installed automatically.
```shell
pip install numpy nltk gensim textblob googletrans 
pip install textaugment
```

- Tasks based on TensorFlow

```shell
Python (>=3.6)
TensorFlow (version 2.3.0) 
Keras (version 2.4.3)
CUDA 10.1
cuDNN (>=7.6)
```

- Tasks based on Pytorch
```shell
Python (>=3.6)
Pytorch (version 1.6.0) 
CUDA 10.1
cuDNN (>=7.6)
```
## Main procedure
### Fine-tuning CodeBERT & GraphCodeBERT 

- pip install torch==1.4.0
- pip install transformers==2.5.0
- pip install filelock

#### Fine-Tune: 
```shell
cd CodeBERT

python run.py \
    --output_dir=./saved_models \
    --tokenizer_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --do_train \
    --num_train_epochs 50 \
    --block_size 256 \
    --train_batch_size 8 \
    --eval_batch_size 16 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --num_labels 250 \  # Number Classifications
    --seed 123456  2>&1 | tee train.log
```

```shell
cd GraphCodeBERT

python run.py \
    --tokenizer_name=microsoft/graphcodebert-base \
    --model_name_or_path=microsoft/graphcodebert-base \
    --config_name microsoft/graphcodebert-base \
    --do_train \
    --num_train_epochs 50 \
    --code_length 384 \
    --data_flow_length 384 \
    --train_batch_size 8 \
    --eval_batch_size 16 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --num_labels 250 \  # Number Classifications
    --seed 123456  2>&1 | tee train.log
```


### Attack CodeBERT
#### Generate substitutes
If you prefer to generate from the scratch:
we use the substitutes by ALERT:
```shell
cd Attack_Robustness/CodeBERT
python get_substitutes.py \
    --base_model=microsoft/codebert-base-mlm \
    --data_type=test \
    --block_size 512 \
    --index 0 500
```
#### Attack
For ALERT Attack, run:
```shell
cd Attack_Robustness/CodeBERT
python alert_attack.py \
    --data_type=test \
    --model_type=roberta \
    --tokenizer_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --number_labels 250 \  # Number Classifications
    --use_ga \
    --block_size 512 \
    --eval_batch_size 32 \
    --index 0 500 \
    --seed 123456
```

For MHM the scripts are:
```shell
cd Attack_Robustness/CodeBERT
python mhm.py \
    --data_type=test \
    --model_type=roberta \
    --tokenizer_name=microsoft/codebert-base \
    --model_name_or_path=microsoft/codebert-base \
    --block_size 512 \
    --number_labels 250 \   # Number Classifications
    --eval_batch_size 32 \
    --index 0 500 \
    --seed 123456
```

### Attack GraphCodeBERT.
#### Generate substitutes
If you prefer to generate from the scratch:
we use the substitutes by ALERT:
```shell
cd Attack_Robustness/GraphCodeBERT
python get_substitutes.py \
    --base_modelmicrosoft/graphcodebert-base \
    --data_type=test \
    --block_size 384 \
    --index 0 500
```
#### Attack
For ALERT Attack, run:
```shell
cd Attack_Robustness/GraphCodeBERT
python alert_attack.py \
    --data_type=test \
    --model_type=roberta \
    --tokenizer_name=microsoft/graphcodebert-base \
    --model_name_or_path=microsoft/graphcodebert-base \
    --base_model=microsoft/graphcodebert-base \
    --code_length 384 \
    --number_labels 250 \
    --eval_batch_size 32 \
    --index 0 500 \
    --seed 123456
```
For MHM, the scripts are:
```shell
cd Attack_Robustness/GraphCodeBERT
python mhm_attack.py \
    --data_type=test \
    --model_type=roberta \
    --tokenizer_name=microsoft/graphcodebert-base \
    --model_name_or_path=microsoft/graphcodebert-base \
    --base_model=microsoft/graphcodebert-base \
    --code_length 384 \
    --number_labels 250 \
    --eval_batch_size 32 \
    --index 0 500 \
    --seed 123456
```
**Note**: the test data are split into mutil-sets. `index` has the values of `0 500`, `500 1000`, `1000 1500`, `1500 2000`, `2000 2500`, `2500 3000`, `3000 3500`, `3500 4000`, `4000 4500`, `4500 5000`, `5000 5500`, `5500 6000`, `6000 6500`, `6500 7000`, `7000 7500`, `7500 8000`, `8000 8500`, `8500 9000`, `9000 9500`, `9500 10000`, `10000 10500`, `10500 11000`, `11000 11500`, `11500 12000`, `12000 12500`. 
The parameter `data_type=test` means attack on the test set, `data_type=train` is to attack the training data for adversarial fine-tuning.

## Dataset
- Java250: https://developer.ibm.com/exchanges/data/all/project-codenet/
- Python800: https://developer.ibm.com/exchanges/data/all/project-codenet/
- Refactory: https://github.com/githubhuyang/refactory
- CodRep: https://github.com/KTH/CodRep-competition
- Google Code Jam (GCJ): https://drive.google.com/uc?id=1t0lmgVHAVpB1GxVqMXpXdU8ArJEQQfqe
- BigCloneBench: https://github.com/soarsmu/attack-pretrain-models-of-code/blob/main/CodeXGLUE/Clone-detection-BigCloneBench/dataset/data.jsonl

## Attack CodeBERT.
### Generate substitutes
If you prefer to generate from the scratch:
we use the substitutes by ALERT:
```shell
python get_substitutes.py \
    --base_model=microsoft/codebert-base-mlm \
    --data_type=test \
    --block_size 512 \
    --index 0 500
```
### Attack
For ALERT Attack, run:
```shell
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

## Attack GraphCodeBERT.
### Generate substitutes
If you prefer to generate from the scratch:
we use the substitutes by ALERT:
```shell
cd dataset
python get_substitutes.py \
    --base_modelmicrosoft/graphcodebert-base \
    --data_type=test \
    --block_size 384 \
    --index 0 500
```
### Attack
For ALERT Attack, run:
```shell
cd code
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
cd code
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

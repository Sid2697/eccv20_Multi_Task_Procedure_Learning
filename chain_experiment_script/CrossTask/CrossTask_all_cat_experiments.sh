#!/bin/bash
GPU_0=0

for K in 10 12 15 7 
do
    Folder_name="all_CrossTask_cat_ss_same_cat_batch_SS_$K"
    echo ${folder_name}
    python ./experiments/all_cat/CrossTask/CrossTask_cat_batch_rank_key_all_cat_ss_att_summarization.py ${Folder_name} ${GPU_0} ${K}&
    wait
done

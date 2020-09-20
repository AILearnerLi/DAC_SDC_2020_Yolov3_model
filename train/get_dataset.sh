#!/bin/bash
# Zip data_training folder
# zip -r data_training_V4.zip data_training
# tar -czvf coco.tar.gz coco

# Download labels from Google Drive, accepting presented query
filename="data_training_V4.zip"
fileid="https://byu.app.box.com/s/hdgztcu12j7fij397jmd68h4og6ln1jw"
curl -c ./cookie -s -L "https://byu.app.box.com/s/hdgztcu12j7fij397jmd68h4og6ln1jw" >/dev/null
curl -Lb ./cookie "https://byu.app.box.com/s/hdgztcu12j7fij397jmd68h4og6ln1jw" -o ${filename}
rm ./cookie

# Unzip labels
unzip -q ${filename} # for data_training_V4.zip
# tar -xzf ${filename} # for data_training_V4.tar.gz
rm ${filename}

# Download and unzip images
cd data_training_V4/dac_sdc_2020
#f="train2017.zip" && curl http://images.cocodataset.org/zips/$f -o $f && unzip -q $f && rm $f
#f="val2017.zip" && curl http://images.cocodataset.org/zips/$f -o $f && unzip -q $f && rm $f

# cd out
#cd ../..

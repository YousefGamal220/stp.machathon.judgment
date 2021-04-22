#! /bin/bash
function unZip
{
    fileName=$1
    dirName=$2
    unzip $fileName
    cd $dirName
    virtualenv virenvNLP
    source virenvNLP/bin/activate
    pip install -r requirements.txt
    python3 app.py
    cd ..
    rm -r $dirName
}

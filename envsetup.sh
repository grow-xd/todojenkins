#!/bin/bash

if [-d "env"]
then
    echo "env virtual env exists"
else
    echo "env virtual env does not exist"
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt
fi

echo $PWD
source env/bin/activate
pip install -r requirements.txt


if [ -d "logs" ]
then
    echo "logs directory exists"
else
    echo "logs directory does not exist"
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup executed"



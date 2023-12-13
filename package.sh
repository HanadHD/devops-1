#!/bin/bash

pip install -r requirements.txt -t ./package/
cp lambda_function.py ./package/
cd package
zip -r ../lambda_function.zip .

#!/bin/sh

if [ -d "dist" ]; then
    rm -rf dist
fi

mkdir -p dist

go mod tidy

go build -o Servian-GCP-Deployment .

cp Servian-GCP-Deployment dist/
cp -r assets dist/
cp conf.toml dist/

rm Servian-GCP-Deployment 

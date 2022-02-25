# IGV webapp docker build

IGV.js webapp in a docker container

# Building
Run the `build.sh` script to create the versioned docker image locally.

## Configurations
Note that the resources folder will be replaced with the folder contained in this repo. This ensures that certain session/tracks can be configuraed according to the need of human genetic interpretations. In addition it allows the configurations to be rewritten so they point at the correct subpath the IGV webapp is served at (/igv).

### DNAnexus track registry
A DNAnexus track registry will be read from `/igv/resouorces/dynamic/hg19_dnanexus.csv`. Required headers:
```
name,project,url,indexURL
...
```

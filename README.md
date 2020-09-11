# Psiturk singularity container

The definition file describes a lightweight, apline-based container to run psiturk

## Usage

Build or pull the container

### Pulling

This container is hosted at https://cloud.sylabs.io/library/mebelledonne/default/psiturk-apline

Can be pulled using the following commands (see link above for up-to-date info)

``` bash
# Pull with Singularity
$ singularity pull --arch amd64 library://mebelledonne/default/psiturk-apline:1.0.0
# Pull by unique ID (reproducible even if tags change)
$ singularity pull library://mebelledonne/default/psiturk-apline:sha256.4fd46933f838844df2dc14e09651f07d3d322a13c7a0458942028e8347f2addb
```

### Building

```bash


singularity shell psiturk.sif

# now inside the container

cd /where/your/project/is/psiturk
psiturk # + any addition args you might want to pass 
```

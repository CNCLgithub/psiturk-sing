# Psiturk singularity container

The definition file describes a lightweight, apline-based container to run psiturk

## Usage

Build or pull the container

```bash


singularity shell psiturk.sif

# now inside the container

cd /where/your/project/is/psiturk
psiturk # + any addition args you might want to pass 
```

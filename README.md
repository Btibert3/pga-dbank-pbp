# About

I thought a fun Labor Day hack would be to pull down the PGA shot-by-shot data.  This week's tournament is at TPC Boston.  I will pull down the data and just explore what is possible.

## Requirements / TODO

#### Setup the environment  

The easiest way is probably to just run

```python
conda create -n pga-dbank-pbp --file requirements.txt
```

Or to install it manually, using a conda environment ...

```python
conda create -n pga-dbank-pbp python=3.4 pandas ipython ipython-notebook requests
``` 


#### Usage

```python
# To activate this environment, use:
# $ source activate pga-dbank-pbp
# To deactivate this environment, use:
# $ source deactivate
``` 
   
      
#### To save the requirements  


```python
conda list -e > requirements.txt
```




#### TODO

- Something

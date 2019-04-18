# SHRIMP : **SH**ellsc**RI**pt for **M**anaging shellscript **P**ackages.

---

## install

```
git clone https://github.com/a9210/shrimp
```
I recommend that add shrimp to $PATH.
```
export PATH=${PATH};/path/to/shrimp
```

## How to use

### make project
```
shrimp create <your project name>
```
```
shrimp create myApp
cd myApp
```


### install package

```
shrimp install <package name> <repository url>
```

```
shrimp install shrimp-util https://github.com/a9210/shrimp-util
```

### import package

**myApp.sh**
```shell
#!/bin/bash
source @import.sh

Hash=$(@import shrimp-util Hash.sh)
source ${Hash}

put "key" "value"
put "natsume" "souseki"

get "key"
get "natsume"
```

myApp.sh will show ...
```
value
souseki
```

### use with shrimp-oo

Sourcing ```source ${Hash}``` is going to sometime produce naming conflict.
I also lunch a project for object oriented shell scripting.
Please check it out.

https://github.com/a9210/shrimp-oo


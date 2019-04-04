# SHRIMP : **SH**ellsc**RI**pt for **M**anaging shellscript **P**ackages.

===

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
shrimp install shrimp-util https://github.com/a9210/shrimp-utilgi
```

### import package

**myApp.sh**
```
#!/bin/bash
source @import.sh

Hash=`@import shrimp-util Hash.sh`
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

### todo feature
+ scope
+ export


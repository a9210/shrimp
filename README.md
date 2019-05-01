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
shrimp install <package name> <repository url> [branch]
```

```
shrimp install shrimp-util https://github.com/a9210/shrimp-util
```
```
shrimp install shrimp-util https://github.com/a9210/shrimp-util develop
```

### import package

**myApp.sh**
```shell
#!/bin/bash
source include.sh

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

### call package

Now we can use @call for running script file.
@call will
* make a sub shell.
* change directory to package root.
* run a script file.

package will be always run in same directory.
This is an advantage with using @call.

### use with shrimp-oo

Sourcing ```source ${Hash}``` is going to sometime produce naming conflict.
I also lunch a project for object oriented shell scripting.
Please check it out.

https://github.com/a9210/shrimp-oo


%title: AWK
%author: xavki





-> AWK : passer une variable shell dans awk <-
=========

<br>

*  -v : passage de la variable variable_awk="$var_shell"


```
jour=$(date +%d/%m/%Y);
cat myfile.txt | awk
-v var="$jour"
'{print var" : "$0}
```




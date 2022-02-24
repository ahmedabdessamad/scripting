%title: AWK
%author: xavki





-> AWK : suppression de certaines lignes <-
=========

<br>

* next : permet de passer à la ligne suivante


```
cat myfile.txt |
awk '
/xavier/ {next}
{print $0}'
```


```
cat myfile.txt |
awk '
$2 ~ /xavier/ {next}
{print $0}'
```


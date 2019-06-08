```
%python
script = """
  if [[ $DB_IS_DRIVER = "TRUE" ]]; then
    sudo apt-get update
    sudo apt-get install -y gdebi-core
    cd /tmp
    sudo wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.1335-amd64.deb
    sudo gdebi -n rstudio-server-1.2.1335-amd64.deb
    sudo chmod 777 /usr/local/lib/R/site-library/sparklyr/java/
    echo ubuntu:ubuntu | sudo chpasswd
    exit 0
  else
    exit 0
  fi
"""

dbutils.fs.mkdirs("/databricks/rstudio")
dbutils.fs.put("/databricks/rstudio/rstudio-install.sh", script, True)
```

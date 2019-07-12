This project contains xml, jar, and other files necessary for the [linemonkey](https://github.com/QLess/linemonkey)
project (main server application).

After installing a new JBoss 4.2.3 application server on a machine, this
directory should be copied over the installation directory in a recursive
manner.

---

### Linux

```sh
rsync -rvaC ./* /usr/local/jboss/
find /usr/local/jboss/bin/native -name '*.dylib' -delete
```

### macOS

```sh
rsync -rvaC ./* /usr/local/jboss/
find /usr/local/jboss/bin/native -name '*.so*' -delete
```

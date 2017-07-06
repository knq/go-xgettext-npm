# About #

go-xgettext is a simple nodejs package that bundles binary versions of
[go-xgettext](https://github.com/gosexy/gettext). Currently version 3.1.0
(rev: bfe36d3) go-xgettext binaries for Linux, OS X, and Windows are included
in this package.

This package is useful when you need to build binary go assets and a full go
environment may not be available (such as on a build host, or cloud vm, etc.).
As such, it can be used as a self-contained go-xgettext packager for use on
automated Gulp or Grunt builds.

## Installation ##

Install package via npm:

```bash
npm install --save go-xgettext
```

## Using ##

The package exports only one function, that when run executes the included
binary (respective to platform), and passes the supplied parameters and paths
to the executable.

The parameters are the same as supported by the go-xgettext binary, and the
return value is an object (the same as returned by
[child\_process.spawnSync](https://nodejs.org/api/child_process.html#child_process_child_process_spawnsync_command_args_options)).

For example:
```javascript
#!/usr/bin/env node

var goxgettext = require('go-xgettext');

goxgettext({
  "o": "myfile.go",
  "c": "comments"
});
```

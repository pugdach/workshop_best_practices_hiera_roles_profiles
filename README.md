This repository has code snippets which are used in

Puppet User Group Berlin Workshop Session

- [Best practices](#best-practices)
- [Hiera](#hiera)
- [Roles & Profiles](#roles-profiles)

## Best practices <a name="best-practices"></a>

### Import

Import can overload classes

Fix the example code in ```best_practices/manifests/import.pp``` and ```best_practices/manifests/nodes.pp```

Import in modules can load files which are not in proper namesapce.

Fix the example code in ```best_practices/modules/imports/manifests/init.pp``` and ```best_practices/modules/imports/manifests/imports.pp```


### Inheritance

Node inheritance

Fix the node code in ```best_practices/manifests/inheritance.pp```

Think about proper solutions for replacement of variables on node level.

Class inheritance

Understand the code in ```best_practices/modules/inheritance/manifests```

Rewrite code to a parameterized class.

### Remote Modules

### Scoped Variables

### Data Validation

### Hyphens and Periods


## Hiera <a name="hiera"></a>

### Hierarchy planning

### Where to put the data?

### Hiera lookups


## Roles and Profiles <a name="roles-profiles"></a>

### Node inheritance

### Node data

### Create Profiles

### Create Roles

### Node classification on Roles


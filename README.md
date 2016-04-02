This repository has code snippets which are used in

[Puppet User Group Berlin](http://www.meetup.com/Puppet-User-Group-Berlin/) Workshop Session

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

Never change remote modules.

Create alocal bare git repository

add github as upstream remote

push code into a branch with name 'upstream'

merge upstream into master

dont forget to fetch the tags

How to get tags into a local repo?

### Scoped Variables

Never rely upon dynamic variable lookup.

Change code in ```best_practices/modules/variables/manifests/init.pp``` to use variable from more_variables class instead of local variable

Change code in ```best_practices/modules/variables/manifests/type_define.pp``` to pass proper variables to content template.

Change code in ```best_practices/modules/variables/templates/file.erb``` to use scoped variables.

Change code in ```best_practices/modules/variables/templates/file.epp``` to use parameter in template.

### Data Validation

Take a look on code in ```best_practices/modules/data_validation/manifests/init.pp```
Think on how to prevent entry of wrong data.

1. Make use of stdlib functions
2. Make use of Puppet 4 Data Types

Check hierdata in ```best_practices/hieradata/common.yaml```

### Hyphens and Periods

Hyphens are no longer hyphens. They are now a mathematical sign (substraction).
Dots are no longer markers which finish something. They are now the separator between an object and its method.

Clean the code from ```best_practices/hypens-are.ugly/manifests```


## Hiera <a name="hiera"></a>

### Hierarchy planning

- What is common?
- What does common mean at all?
- Where are differences?
- How to identify whether a node is different?


### Where to put the data?

- global (/etc/puppetlabs/code/hieradata)
- environment (/etc/puppetlabs/code/environments/%{environment}/hieradata)
- module (<modulepath>/data)

### Hiera lookups

What data lookup to use?

- hiera
- data in environments
    - hiera lookup
    - lookup lookup
- data in modules
    - hiera lookup
    - lookup lookup

Play around with ```best_practices/modules/data_in_modules/``` and ```best_practices/modules/data_in_modules2```

## Roles and Profiles <a name="roles-profiles"></a>

### Node inheritance

Node inheritance is no longer working in Puppet 4

### Create Profiles

Profile = Implementation Module

Describes a way how a technical component module should be used on your platform

### Create Roles

Role = Business Use Case for a System/Service

### Node classification on Roles


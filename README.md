# create_resources

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with create_resources](#setup)
    * [What create_resources affects](#what-create_resources-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with create_resources](#beginning-with-create_resources)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module will let you manage Hiera hash for Puppet standard resource types.
This can be OS packages to install, etc...

## Setup

### What create_resources affects **OPTIONAL**

If it's obvious what your module touches, you can skip this section. For
example, folks can probably figure out that your mysql_instance module affects
their MySQL instances.

If there's more that they should know about, though, this is the place to mention:

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you might want to include an additional "Upgrading" section
here.

### Beginning with create_resources

To have Puppet install latest `net-tools` and standard `wget` OS packages, declare the following hiera hash:

``` yaml
create_resources::packages_list:
  # net-tools provides netstat
  'net-tools':
    ensure: latest
  'wget': {}
```

## Usage

This section is where you describe how to customize, configure, and do the
fancy stuff with your module here. It's especially helpful if you include usage
examples and code samples for doing things with your module.

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This module only works with RedHat like OS's at this moment.
This module has been validated on:

* CentOS: 
    * 7.2 x86_64

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You can also add any additional sections you feel
are necessary or important to include here. Please use the `## ` header.

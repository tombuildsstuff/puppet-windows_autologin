Puppet-Windows_AutoLogin
===============

A puppet module to configure auto login on Windows
[![Project Build Status](https://travis-ci.org/tombuildsstuff/puppet-windows_autologin.svg?branch=master)](https://travis-ci.org/tombuildsstuff/puppet-windows_autologin)

Installation
------------

Add this to your Puppetfile:
```puppet
mod 'tombuildsstuff/windows_autologin', '1.0.0'
````

Usage
-----

Enabling Auto-Login (on a local computer):

```puppet
class { 'windows_autologin':
  ensure   => 'enabled',
  username => 'myuser',
  password => 'p@ssw0rd'
}
```

Enabling Auto-Login (when the machine is bound to a Active Directory):

```puppet
class { 'windows_autologin':
  ensure   => 'enabled',
  domain   => 'mydomain',
  username => 'myuser',
  password => 'p@ssw0rd'
}
```

Disabling Auto-Login:
```puppet
class { 'windows_autologin':
  ensure => 'disabled'
}
```

Testing
-------
This module's been tested on Windows Server 2008/2012 R2

Contributing
------------
Send a pull request, ideally with tests :)

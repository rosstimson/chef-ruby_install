ruby-install Cookbook
=====================

v0.1.3 (2014-02-15)
-------------------


v0.1.2
-------

* Last release got mangled with PaxHeaders in directories which seems to be due
  to an issue with bsdtar in later versions of OS X.

v0.1.1
-------

* Update to ruby-install version 0.3.4
* Bump dependencies
* Ark extracts ruby-install tarball to /tmp otherwise it defaults to being
  extracted to /usr/local/ruby-install1.  Once the ruby-install bin is installed
  with `make install` the extracted tarball is no needed.

v0.1.0
------

* Initial release.

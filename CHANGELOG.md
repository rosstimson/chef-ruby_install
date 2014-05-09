ruby-install Cookbook
=====================

v1.0.4 (2014-05-09)
-------------------

* Upgraded ruby-install to 0.4.3
* Updates to Rubies and OSs


v1.0.2 (2014-03-24)
-------------------

* Update default ruby_install version to 0.4.1 (@brainopia)
* Fix broken redirect on latest Chef (@brainopia)
* Prevent reinstall on :install action (@brainopia)
* Slight refactor to fix RuboCop warnings


v1.0.0 (2014-02-15)
-------------------

* Upgrade to ruby-install 0.4.0
* Use new --rubies-dir option to specify location of installed rubies,
  this gives more expected behaviour and works well with partial version
  strings.  Fixes GH #3.

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

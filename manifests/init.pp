# == Class: skype
#
# Install Skype for OS X.
#
# === Parameters:
#
# [*version*] Version of Skype
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class skype(
  $version = $skype::params::version
) inherits skype::params {

  anchor {'skype::begin': } ->
  class {'skype::install': } ->
  anchor {'skype::end': }

}

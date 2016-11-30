# Class: cron
#
# This class wraps *cron::instalL* for ease of use
#
# Parameters:
#   package_ensure - Can be set to a package version, 'latest', 'installed' or 'present'.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#   include 'cron'
#   class { 'cron': }

class cron (
  $package_ensure = 'installed'
  $cronjob_contents = undef,
  $cronjob_file     = undef,
  $cronjob_mode     = '0744',
) {
  class { '::cron::install': package_ensure => $package_ensure }
  -> class { 'cron::service': }
}


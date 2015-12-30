# == Class overpass_api::initialize
#
# This class is used to initialize a default overpass_api db and user
# Depends on the pupppetlabs-mysql module
class overpass_api::initialize {
  if $::overpass_api::initialize {
    case $::operatingsystem {
      'RedHat', 'CentOS': {
        exec { 'get-osm-data':
          cwd     => '/var/lib/osm3s/data/',
          command => "/bin/wget ${::overpass_api::osm_upstream_data_file}",
          onlyif  => 'test -f /var/lib/osm3s/data/*.osm.bz2',
          notify  => Exec['import-osm-data']
        }

        exec { 'import-osm-data':
          command     => '/usr/local/osm3s/bin/init_osm3s.sh /var/lib/osm3s/data/*.osm.bz2 /var/lib/osm3s/data/db /usr/local/osm3s/',
          refreshonly => true,
        }
      }
      default: {
        fail "${::operatingsystem} is not supported."
      }
    }
  }
}

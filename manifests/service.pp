# Class: overpass_api::service
#
# Class which configures the overpass api daemon
class overpass_api::service {
  service { 'overpass-api':
    ensure => 'running',
    enable => true
  }
  service { 'dispatcher-areas':
    ensure => 'running',
    enable => true
  }
  service { 'osm3s-query':
    ensure => 'running',
    enable => true
  }
}

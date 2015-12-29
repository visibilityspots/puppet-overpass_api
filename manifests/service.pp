# Class: overpass_api::service
#
# Class which configures the overpass api daemon
class overpass_api::service {
  service { 'overpass-api':
    ensure  => 'running',
    enabled => true
  }
}

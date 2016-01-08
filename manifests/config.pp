# Class: overpass_api::config
#
# Class which configures the overpass api service
class overpass_api::config {
  file { '/etc/systemd/system/overpass-api.service':
    content => template('overpass_api/overpass-api.service')
  }
  file { '/etc/systemd/system/dispatcher-areas.service':
    content => template('overpass_api/dispatcher-areas.service')
  }
  file { '/etc/systemd/system/osm3s-query.service':
    content => template('overpass_api/osm3s-query.service')
  }
}

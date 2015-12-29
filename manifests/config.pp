# Class: overpass_api::config
#
# Class which configures the overpass api service
class overpass_api::config {
  file { '/etc/systemd/system/overpass-api.service':
    content => template('overpass_api/overpass-api.service')
  }
}

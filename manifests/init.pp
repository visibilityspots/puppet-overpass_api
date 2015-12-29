# Class: overpass_api
#
# Initialization class for the overpass_api service
class overpass_api (
  $pkg_name     = $overpass_api::params::pkg_name,
) inherits overpass_api::params {

  include overpass_api::install
  include overpass_api::config
  include overpass_api::service

  Class['overpass_api::install'] ->
  Class['overpass_api::config'] ->
  Class['overpass_api::service']
}

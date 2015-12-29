# Class: overpass_api::install
#
# Installation of the overpass api package
class overpass_api::install {
  package { $overpass_api::pkg_name :
    ensure  => 'installed'
  }
}

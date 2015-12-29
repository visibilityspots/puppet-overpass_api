# Class yum_repo_client::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the yum_repo_client service
class yum_repo_client::params {
  $pkg_name     = 'yum-repo-client'
  $host         = 'localhost'
  $port         = '8000'
  $context      = undef
}

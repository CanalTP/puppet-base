class base::packages (
  $packages_list   = $base::packages_list,
  $packages_ensure = $base::packages_ensure,
  $if_noop         = $base::if_noop,
) inherits base {

  $defaults = {
    ensure => $packages_ensure,
    noop   => $if_noop,
  }

  if $packages_list {
    create_resources ( package, hiera_hash('base::packages_list'), $defaults )
  }

}

# == Class: windows_autologin
#
# A puppet module to configure auto login on Windows.
#
# === Parameters
#
# [*ensure*]
#   Is Auto Login Enabled or Disabled?
#
# [*domain*]
#   The domain, or computer name where the account exists. Defaults to the FQDN
#
# [*username*]
#   The username to login with.
#
# [*password*]
#   The password to login with.
#

class windows_autologin(
  $ensure   = 'disabled',
  $domain   = $::fqdn,
  $username = undef,
  $password = undef
)
{
  validate_re($ensure, ['^(enabled|disabled)$'])

  case downcase($::osfamily)
  {
    'windows':
    {
      $registry_path = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon'

      case downcase($ensure)
      {
        'enabled':
        {
          validate_string($domain)
          validate_string($username)
          validate_string($password)

          registry_value { "${registry_path}\\AutoAdminLogon":
            ensure  => present,
            type    => dword,
            data    => 1
          }

          registry_value { "${registry_path}\\DefaultUserName":
            ensure => present,
            type   => string,
            data   => $username
          }

          registry_value { "${registry_path}\\DefaultPassword":
            ensure => present,
            type   => string,
            data   => $password
          }
        }

        default:
        {
          registry_value { "${registry_path}\\AutoAdminLogon":
            ensure => present,
            type   => dword,
            data   => 0
          }

          registry_value { "${registry_path}\\DefaultUserName":
            ensure => absent,
            type   => string
          }

          registry_value { "${registry_path}\\DefaultPassword":
            ensure => absent,
            type   => string
          }
        }
      }

    }

    default:
    {
      fail('This module only supports Windows')
    }
  }
}

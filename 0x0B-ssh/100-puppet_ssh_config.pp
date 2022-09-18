# This puppet configures client to connect server without password
file_line { 'IdentityFile':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  replace => true,
}

file_line { 'PasswordAuthentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

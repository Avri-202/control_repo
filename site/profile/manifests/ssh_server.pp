class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD0JXPUmMcidBZNU2iwJ3StdAfoIaQ5QSNfAJQa4VnRot3jP4ffFZzKFa/zFp14v5lqTdz/asVJHNIEONI7RxeHrd0FiyqSTEiyKaalj6v2xt/NEw3tYSMfsbkKTbDZoHwML6PYdxlED9qRelPUNCX6Lruotl3TfPmj//fRsESGPL0HPhGF8Yq78h/dcUcnXh+VmJcO3UlsOYiMEeu5tSmBkT+ZBQjXURImgG7+vLedP/zJcKuwZW1/Dr9n6Il+b/717OlyqhdE8yKejKkO/raZNnfdB63WSHUqjujFd93NBYxvcqHlZjyUk22ZI+D3262Hep9/mjZyimtqHPeVbF+D',
  }  
}

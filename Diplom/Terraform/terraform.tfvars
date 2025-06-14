virtual_machines = {
  "vm-1" = {
    vm_name   = "s19255427-vm1"        # Имя ВМ
    vm_desc   = "mediawiki-1"          # Описание
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm1-disk"   # Название диска
    template  = "fd8136cthbfr503*****" # ID образа ОС для использования Ubuntu-2204
    pf-id     = "standard-v3"
    vm_host   = "s19255427-mw1"
  },
  "vm-2" = {
    vm_name   = "s19255427-vm2" # Имя ВМ
    vm_desc   = "mediawiki-2"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm2-disk"   # Название диска
    template  = "fd8136cthbfr503*****" # ID образа ОС для использования Ubuntu-2204
    pf-id     = "standard-v3"
    vm_host   = "s19255427-mw2"
  },
  "vm-3" = {
    vm_name   = "s19255427-vm3" # Имя ВМ
    vm_desc   = "proxy"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm3-disk"   # Название диска
    template  = "fd8136cthbfr503*****" # ID образа ОС для использования Ubuntu-2204
    pf-id     = "standard-v3"
    vm_host   = "s19255427-proxy"
  },
  "vm-4" = {
    vm_name   = "s19255427-vm4" # Имя ВМ
    vm_desc   = "zabbix"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm4-disk"   # Название диска
    template  = "fd8136cthbfr503*****" # ID образа ОС для использования Ubuntu-2204
    pf-id     = "standard-v3"
    vm_host   = "s19255427-zabbix"
  }
}



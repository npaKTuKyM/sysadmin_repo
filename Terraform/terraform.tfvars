virtual_machines = {
  "vm-1" = {
    vm_name   = "s19255427-vm1"                                  # Имя ВМ
    vm_desc   = "Описание для инженеров. Его видно только здесь" # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 15                                               # Объём диска в ГБ
    disk_name = "s19255427-vm1-disk"                             # Название диска
    template  = "fd84tpdkg4e6fb67p6fs"                           # ID образа ОС для использования Debian-12
    pf-id     = "standard-v1"
    vm_host   = "s19255427-web1"
  },
  "vm-2" = {
    vm_name   = "s19255427-vm2" # Имя ВМ
    vm_desc   = "Описание для инженеров. Его видно только здесь"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm2-disk"   # Название диска
    template  = "fd84tpdkg4e6fb67p6fs" # ID образа ОС для использования Debian-12
    pf-id     = "standard-v1"
    vm_host   = "s19255427-web2"
  },
  "vm-3" = {
    vm_name   = "s19255427-vm3" # Имя ВМ
    vm_desc   = "Описание для инженеров. Его видно только здесь"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm3-disk"   # Название диска
    template  = "fd84tpdkg4e6fb67p6fs" # ID образа ОС для использования Debian-12
    pf-id     = "standard-v1"
    vm_host   = "s19255427-proxy"
  },
  "vm-4" = {
    vm_name   = "s19255427-vm4" # Имя ВМ
    vm_desc   = "Описание для инженеров. Его видно только здесь"
    vm_cpu    = 2                      # Кол-во ядер процессора
    ram       = 2                      # Оперативная память в ГБ
    disk      = 15                     # Объём диска в ГБ
    disk_name = "s19255427-vm4-disk"   # Название диска
    template  = "fd84tpdkg4e6fb67p6fs" # ID образа ОС для использования Debian-12
    pf-id     = "standard-v1"
    vm_host   = "s19255427-ansible"
  }
}



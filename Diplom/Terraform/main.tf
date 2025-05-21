resource "yandex_compute_disk" "boot-disk" {
  for_each  = var.virtual_machines
  name      = each.value["disk_name"]
  type      = "network-hdd"
  zone      = "ru-central1-a"
  size      = each.value["disk"]
  image_id  = each.value["template"]
  folder_id = "b1gdjtjk7s19oqvpmgtp"
}

resource "yandex_vpc_network" "network-1" {
  name      = "network1"
  folder_id = "b1gdjtjk7s19oqvpmgtp"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
  folder_id      = "b1gdjtjk7s19oqvpmgtp"
}

resource "yandex_compute_instance" "virtual_machine" {
  for_each    = var.virtual_machines
  name        = each.value["vm_name"]
  platform_id = each.value["pf-id"]
  hostname    = each.value["vm_host"]
  description = each.value["vm_desc"]
  folder_id   = "b1gdjtjk7s19oqvpmgtp"

  resources {
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }

  metadata = {
    user-data = "${file("/home/iac/terraform_yandex/cloud-config.yml")}"
  }

  scheduling_policy {
    preemptible = true
  }

}


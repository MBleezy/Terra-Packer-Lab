build {
    source = [
        "source.azure-arm.vm"
    ]

    provisioner "shell" {
        execute_command = local.execute_command
        inline = ["apt update"]
    }

    provsioner "shell" {
        execute_command = local.execute_command
        inline = ["/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"]
        only = ["azure-arm"]
    }
}
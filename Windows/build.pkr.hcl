build {
    source = [
        "source.azure-arm.vm"
    ]

    provisioner "powershell" {
        inline = ["Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = "]
    }

    provsioner "shell" {
        inline = [
            #Sysprep command goes here
            ]
        
    }
}
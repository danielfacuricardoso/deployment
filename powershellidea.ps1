#1st Step - Filter a Software if it installed or Not
$name = gwmi win32_product -filter "Name LIKE '%NameOfSoftware%'" | Select Name
#2nd step - Save Output of variable $name

#3th Step - Apply conditional action acording of Output of variable $name
#4th step - install or not install app

-----
second possibility:https://social.technet.microsoft.com/Forums/azure/en-US/8c2c8111-8995-4ff6-a25c-e0f48136e14f/determine-if-service-exists?forum=winserverpowershell
codigo:
$serviceName = 'NameOfService'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {

    If ((Get-Service $serviceName).Status -eq 'Running') {

       Write-Host "$serviceName found, but it is running."
    #    Stop-Service $serviceName
    #    Write-Host "Stopping $serviceName"

    } Else {

        Write-Host "$serviceName found, but it is not running." 

    }

} Else {

    Write-Host "$serviceName not found" <---- replace for install code

}

---

2 Update Java:

https://www.powershelladmin.com/wiki/PowerShell_Java_Auto-Update_Script

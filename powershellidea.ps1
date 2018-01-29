#Filter a Software if it installed or Not
$name = gwmi win32_product -filter "Name LIKE '%NameOfSoftware%'" | Select Name
#Next step - Save Output of variable $name
#3th Step - Apply conditional action acording of Output of variable $name
#4th step - install or not install app

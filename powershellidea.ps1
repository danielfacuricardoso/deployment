#Filter a Software if it installed or Not
$name = gwmi win32_product -filter "Name LIKE '%NameOfSoftware%'" | Select Name
#Next step - Save Output of variable $name

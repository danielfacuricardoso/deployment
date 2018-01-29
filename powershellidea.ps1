#Filter a Software if it installed or Not
gwmi win32_product -filter "Name LIKE '%NameOfSoftware%'" | Select Name

#Filter a Software if is installed or Not
gwmi win32_product -filter "Name LIKE '%NameOfSoftware%'" | Select Name

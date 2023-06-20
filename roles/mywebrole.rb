name "WEBROLE"
description "This is my web role"
run_list "recipe[mywebserver::installjava]","recipe[mywebserver::mywebrecip]"
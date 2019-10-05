resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'Mythic Framework Apartments'
description 'Instanced Apartments For Mythic Framework'
author 'Alzar - https://github.com/Alzar'
version 'v1.0.0'
url 'https://github.com/mythicrp/'

client_scripts {
	'@salty_tokenizer/init.lua',
	"client/main.lua",
}

server_scripts {
	'@salty_tokenizer/init.lua',
	'server/main.lua',
}

dependencies {
	'mythic_base',
	'salty_tokenizer',
}

this_is_a_map 'yes'
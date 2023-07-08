fx_version 'cerulean'
game 'gta5'

author 'TheStoicBear'
description 'codex-freemoney Free Money every 1 hour'
version '1.0.0'

-- Define the resource metadata
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

-- Specify the server script
server_script 'server.lua'
shared_scripts {
    "@ND_Core/shared/import.lua"
}
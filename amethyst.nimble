# AmethystCore
# GNU General Public License v3
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://github.com/CodCatDev/AmethystCore

version = "0.1.0"
author = "CodCatDev"
description = "AmethystCore - custom Minecraft server core written in Nim"
license = "GPL-3.0"

let name: string = "amethystcore"

srcDir = "src"
binDir = "build"
bin = @["amethyst"]
backend = "c"

requires "nim >= 2.2.10"

skipDirs = @["tests", "docs"]

task release, "Build AmethystCore in release mode":
    exec "nimble build -d:release -d:danger --opt:speed --mm:orc --passL:-s"
    exec "./build/amethyst.exe"

task dev, "Build AmethystCore in dev (debug) mode":
    exec "nimble build -d:debug --debugger:native --stacktrace:on --linetrace:on"
    exec "./build/amethyst.exe"
-- This file was automatically generated for the LuaDist project.

package = "luayaml"
version = "0.5.6-1"
-- LuaDist source
source = {
  tag = "0.5.6-1",
  url = "git://github.com/LuaDist-testing/luayaml.git"
}
-- Original source
-- source = {
--    url = "http://luaforge.net/frs/download.php/3334/luaYAML.tar.gz"
-- }
description = {
   summary = "A YAML parser binding for Lua, using the syck library.",
   homepage = "http://luaforge.net/projects/luayaml/",
   license = "BSD"
}
dependencies = {
   "lua >= 5.1",
}
external_dependencies = {
  SYCK = {
    header = "syck.h",
    library = "libsyck.a"
  }
}
build = {
   type = "module",
   modules = {
      ["yaml"] = "yaml.lua",
      ["syck"] = {
        sources = {"syck.c"},
        libraries = {"syck"}
      }
   }
}
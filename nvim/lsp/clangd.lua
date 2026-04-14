return {
  cmd = {
    "clangd",
    "--compile-commands-dir=build",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style={google, ColumnLimit: 120}",
    "-I" .. vim.fn.expand "$HOME" .. "/.local/include",
  },
  root_markers = {
    "Makefile",
    "configure.ac",
    "configure.in",
    "config.h.in",
    "meson.build",
    "meson_options.txt",
    "build.ninja",
    "compile_commands.json",
    "compile_flags.txt",
    ".git",
  },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
  },
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
}

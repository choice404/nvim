local function load_env_file()
  local env_file = vim.fn.stdpath("config") .. "/.env"
  local file = io.open(env_file, "r")

  if not file then
    vim.notify(".env file not found", vim.log.levels.WARN)
    return
  end

  for line in file:lines() do
    for key, value in string.gmatch(line, "([%w_]+)=([%w%p]+)") do
      vim.fn.setenv(key, value)
    end
  end

  file:close()
end

load_env_file()

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

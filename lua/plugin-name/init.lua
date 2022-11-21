local M = {}

local lazy = setmetatable({}, {
  __index = function(_, key)
    return require('plugin-name.' .. key)
  end
})

function M.setup(opts)
  lazy.config.setup(opts)
end

return M


local shell = require("resty.shell")
local log = ngx.log
local ERR = ngx.ERR
local delay = 5
local handler
handler = function (premature,param)
    -- do some routine job in Lua just like a cron job
    if premature then
        return
    end
    log(ERR, "param is : ", param)
    ngx.timer.at(delay, handler,"again run... dalongrong")
end

local args = {
   socket = {
       host="backend",
       port=13000
   }
}

function call()
    local status, out, err = shell.execute("cat /proc/sys/kernel/random/uuid", args)
    ngx.say(out)
end

function loop()
    local ok, err = ngx.timer.at(delay, handler,"dalong demo timer init")
end

return  {
    call=call,
    loop=loop
}
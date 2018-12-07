
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
       host="127.0.0.1",
       port=13002
   }
}

function call()
    local status, out, err = shell.execute("mkdir -p /opt/demo && npm install -g yarn && cd  /opt/demo && yarn init -y && yarn  add uuid && tree", args)
    ngx.say("<pre>"..out.."</pre>")
end

function loop()
    local ok, err = ngx.timer.at(delay, handler,"dalong demo timer init")
end

return  {
    call=call,
    loop=loop
}
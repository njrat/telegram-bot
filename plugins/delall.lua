local function history(extra, suc, result)
for i=1, #result do
delete_msg(result[i].id, ok_cb, false)
end
if tonumber(extra.con) == #result then
send_msg(extra.chatid, 'Done the deleted msgs is "'..#result..'"', ok_cb, false)
else
send_msg(extra.chatid, '', ok_cb, false)
end
end
local function run(msg, matches)
if matches[1] == 'del' and is_owner(msg) then
if msg.to.type == 'channel' then
if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
return
end
get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
else
return 
end
else
return
end
end

return {
patterns = {
'^[!/#](del) (%d*)$'
},
run = run
}
do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'help1' then
  local alnaze = [[
⚡️ ŹËŖÖ~BÖȚ⚡️
✅ - أوامر الرفع والتنزيل 👍
➖🔸➖🔹➖🔸➖🔹➖
♣️ - /promote : رفع مشرف
♣️ - /demote : حذف مشرف 
♣️ - /setadmin : لرفع ادمن
♣️ - /demoteadmin : لتزيل ادمن
➖🔸➖🔹➖🔸➖🔹➖
#Dev 👷🛠: @Nj_rat ✍
#Dev 👷🛠: @m_baag  ✍
لعرض قائمة الاوامر /help
]]
reply_msg(reply_id, alnaze, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) then
local alnaz = "للمشرفين فقط 🖕🏿😎"
reply_msg(reply_id, alnaze, ok_cb, false)
end

end
return {
patterns ={
 "^[!/#](help1)$",
},
run = run
}
end

do
local function run (msg, matches)

local reply_id = msg ['id']
if matches[1]==  'id' then

local zeoone = '🔹ID :: '..msg.from.id..'\n'
..'🔹USERNAME :: @'..msg.from.username..'\n'
..'🔹CHAT ID :: '..msg.to.id..'\n'

reply_msg(reply_id, zeoone, ok_cb, false)

end
end
return {
patterns = {
--"^[!/#](id)$"
},
run = run
}
end
do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'help' then
  local alnaze = [[
مرحباً بك في ⚡️ ŹËŖÖ Ξ B〄Ț ⚡️

➖🔹➖🔹➖🔹➖🔹➖🔹➖
قوائم المساعده 🛠👍
/help1 : أوامر الرفع خاصه بمالكي المجموعات ✅
/help2 : أوامر الطرد والحظر✅
/help3 : أوامر عامه✅
/help4 : اوامر القفل وفتح الوسائط ✅

#Dev :- @nj_rat 🛠
#Dev :- @m_baag 🛠
➖🔹➖🔹➖🔹➖🔹➖🔹➖
#ملاحظة :- هذه الاوامر للمطورين ومالكي المجموعات ✅👍
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
 "^[!/#](help)$",
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
"^[!/#](id)$"
},
run = run
}
end
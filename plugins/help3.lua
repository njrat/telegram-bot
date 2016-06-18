do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'help3' then
  local alnaze = [[
⚡️ ŹËŖÖ~BÖȚ ⚡️    

✅ - أوامر عامه 👍
➖🔸➖🔹➖🔸➖🔹➖
♣️ - /in : لعرض معلومات مستخدم بالرد
♣️ - /info : لعرض معلومات عنك
♣️ - /id : لعرض الأيدي الخاص بك
♣️ - /res : لاضهار الاسم والايدي
♣️ - /rules : لاضهار القوانين
♣️ - /setrules : لوضع قوانين
♣️ - /about  : لاضهار الوصف
♣️ - /setabout : لوضع وصف للمجموعة
♣️ - /setname : لوضع أسم مجموعة
♣️ - /setphoto : لوضع صورة المجموعة
♣️ - /link : لأرسال الرابط
♣ - /linkpv : لرسال الرابط في الخاص
♣️ - /nwelink : تغير الرابط
♣️ - /s : الاعدادات
♣️ - /addword + الكلمه لحضر الكلمات
♣️ - /remword + كلمه لألغاء الحضر
♣️ - /wordlist : الكلمات المحضوره
➖🔸➖🔹➖🔸➖🔹➖
#Dev 👷🛠: @Nj_rat ✍
#Dev 👷🛠: @m_baag ✍
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
 "^[!/#](help3)$",
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
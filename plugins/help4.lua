do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'help4' then
  local alnaze = [[
⚡️ ŹËŖÖ~BÖȚ ⚡️    

✅ - اوامر قفل وفتح الوسائط 👍
➖🔸➖🔹➖🔸➖🔹➖
♣️ - /close|open links : منع الروابط والاعلانات
♣️ - /close|open photo : منع الصور
♣️ - /close|open sticker : منع ملصقات
♣️ - /close|open gifs : منع الصور المتحركة
♣️ - /close|open audio : منع بصمات
♣️ - /close|open video : منع فديوات
♣️ - /close|open text : لقفل النص
♣️ - /close|open contacts : لقفل مشاركة جهات الاتصال
♣️ - /close|open all : لقفل المحادثة
♣️ - /bot lock |unlock : لمنع البوتات
♣️ - /close|open spam : منع الكلايش الطويلة
♣️ - /close|open flood : قفل التكرار
♣️ - /setflood [5-20] تحديد عدد التكرار 
♣️ - /lock|unlock rtl : منع الاضافة الجماعية
♣️ - /close|open documents : لقفل الوسائط
♣️ - /close|open fwd : لمنع اعادة التوجيه
♣️ - close|open m : لقفل الميديا
♣️ - /close|open reply : لمنع الرد على رسائل
♣️ - /close|open tags : لمنع الاشارة
♣️ - /setusername : وضع معرف للمجموعة
♣️ - /del : لحذف اي رساله بالرد
♣️ - /del + عدد الرسائل من 1000 او أقل
♣️ - /tr : للترجمة الانجليزية
♣️ - /tr ar : للترجمة الانجليزية للعربية
♣️ - /clean modlist : لحذف الادمنية
♣️ - /clean about : لحذف الوصف
♣️ - /clean rules : لحذف القوانين
♣️ - /setusername : لاضافة معرف للمجموعة
♣️ - /clean username : لحذف معرف المجموعة
➖🔸➖🔹➖🔸➖🔹➖
#Dev 👷🛠: @Nj_rat ✍
#Dev 👷🛠:@m_baag ✍
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
 "^[!/#](help4)$",
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
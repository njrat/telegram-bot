do
local function run(msg,matches)

if is_momod(msg) and matches[1]== 'pv' and matches[2]== 'help' or matches[1]== '@MAXDEVD' then
local info = [[
            ⚡️ ŹËŖÖ~BÖȚ ⚡️    

 ملاحظة :- الاوامر تستخدم ب {/} فقط
  
✅ - Group Promote  commands
➖🔸➖🔹➖🔸➖🔹➖
♣️ - /promote : رفع مشرف
♣️ - /demote : حذف مشرف 
♣️ - /setowner : اضافة مالك مجموعة
♣️ - /setadmin : لاضافة اداري
♣️ - /demote admin : تنزيل اداري
➖🔸➖🔹➖🔸➖🔹➖
✅Commands for control member
➖🔸➖🔹➖🔸➖🔹➖
♣️ - /kick : لطرد المستخدم 
♣️ - /ban :  لحضر المستخدم
♣️ - /unban : لفك حضر المستخدم
♣️ - /kickme : للخروج من لمجموعه
♣️ - /silent  : لكتم المستخدم
♣️ - /unsilent  : لالغاء كتم المستخدم
♣️ - /mutelist : عرض المكتومين
♣️ - /banall : باند عام
♣️ - /unbanall : الغاء باند العام
➖🔸➖🔹➖🔸➖🔹➖
✅ - Group control  
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
♣️ - /link : لجلب الرابط
♣ ️- /linkpv : لرسال الرابط في الخاص
♣️ - /nwelink : تغير الرابط
♣️ - /s : الاعدادات
♣️ - /tosuper : لتحويل المجموعه الئ سوبر
♣️ - /add : لتفعيل المجموعة
♣️ - /rem : الغاء تفعيل المجموعة
♣️ - /addword + الكلمه لحضر الكلمات
♣️ - /remword + كلمه لألغاء الحضر
♣️ - /wordlist : الكلمات المحضوره
♣️ - pv help : لرسال قائمة المساعده في الخاص
➖🔸➖🔹➖🔸➖🔹➖
✅ - Commands for group
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
♣️ - /close|open reply : لمنع الرد على رسائل
♣️ - /close|open tag : لمنع الاشارة
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
♣️ - /clean mutelist : لحذف المكتومين
➖🔸➖🔹➖🔸➖🔹➖
#Dev 👷🛠: @Nj_rat ✍
]]

send_large_msg("user#id"..msg.from.id, info)
end

if is_momod(msg) and matches[1]== 'pv' and matches[2]== 'help' or matches[1]== '@MAXDEVD' then
return 'تم ارسال الاوامر اللى الخاص ان لن يتم ارسالهه قم بأرسال رساله الى البوت'
end
local reply_id = msg['id']
if not is_momod(msg) then
local  info = 'للمشرفين فقط '
reply_msg(reply_id, info, ok_cb, false)
end 

end
return {
patterns ={
  "^(pv) (help)$",
  
},
run = run
}
end
do 
local function iDev1(msg, matches) 
if ( msg.text ) then
  if ( msg.to.type == "user" ) then
     return "اهلاً في الرد الألي لبوت zero bot لتحدث مع مبرمج البوت ادخل المعرف @nj_rat وللدخول لمجموعه الدعم ادخل المعرف @zero_botgroup"
    end 
  end 
end 
return { 
  patterns = { 
     "(.*)$"
  }, 
  run = iDev1 
} 

end 
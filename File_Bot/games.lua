local function games(msg)
local text = msg.content_.text_
if text == 'الالعاب' and database:get(bot_id..'Lock:Games'..msg.chat_id_) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
Text_Games = [[
 ◈ اوامر الالعاب كتالي 
 ╭—──── • ◈ • ──—–—╮
 ◈ تفعيل الالعاب • لتفعيل العبه ° 
 ◈ تعطيل الالعاب • لتعطيل العبه °
 ╰──── • ◈ • ────╯
 ◈ الالعاب الخاصه بسورس 
 ╭—──── • ◈ • ──—–—╮
 ◈ لعبه البات ~⪼ لعبة المحيبس 
 ◈ لعبه التخمين ~⪼ لعبة البحث
 ◈ لعبه الاسرع ~⪼ لعبة اسرع شخص
 ◈ لعبه السمايلات ~⪼ لعبة المطابقه 
 ◈ لعبه المختلف ~⪼ لعبة الذكاء
 ◈ لعبه الرياضيات ~⪼ لعبة الارقام
 ◈ لعبه الانكليزي ~⪼ لعبة ترجمه
 ◈ لعبه الامثله ~⪼ لعبة تصحيح 
 ◈ لعبه العكس ~⪼ لعبة عكس الكلمات
 ◈ لعبه الحزوره ~⪼لعبة التفكير 
 ◈ لعبه المعاني ~⪼ العبه الشهيره 
 ╭—──── • ◈ • ──—–—╮
 ➢[𝐬𝐨𝐮𝐫𝐜𝐞 𝐚𝐥𝐚𝐳𝐢𝐳𝐲 ◈](t.me/al_aziza1)
[➣مبرمج السورس◈](t.me/alazizy)
╰──── • ◈ • ────╯
]]
send(msg.chat_id_, msg.id_,Text_Games) 
end

if text == 'السمايلات' or text == 'السمايل' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Sma'..msg.chat_id_)
Random = {'🍏','🍎','🍐','🍊','??','🍉','🍇','🍓','🍈','🍒','🍑','🍍','??','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🥖','🥐','🍞','🥨','🍟','🧀','🥚','🍳','🥓','🥩','🍗','🍖','🌭','🍔','🍠','🍕','🥪','🥙','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚗','🚌','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔','🛡','🔮','🌡','💣','📌','📍','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
SM = Random[math.random(#Random)]
database:set(bot_id..'Random:Sm'..msg.chat_id_,SM)
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يدز هاذا السمايل ? » {`'..SM..'`}')
return false
end
end
if text == ''..(database:get(bot_id..'Random:Sm'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Sma'..msg.chat_id_) then
if not database:get(bot_id..'Set:Sma'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ سمايل , سمايلات }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Sma'..msg.chat_id_,true)
return false
end 
if text == 'اسرع' or text == 'الاسرع' or text == 'ترتيب' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Speed:Tr'..msg.chat_id_)
KlamSpeed =
{' دحوو1م ',' دحوو2م ',' دحوو3م ',' دحوو4م ',' دحوو5م ',' دحوو6م ',' دحوو7م ' دحوو8م ',' دحوو9م ',' دحوو10م ',' دحوو11م ',' دحوو12م ',' دحوو13م ',' دحوو14م ',' دحوو15م ',' دحوو16م ',' دحوو17م ',' دحوو18م ',' دحوو19م ',' دحوو20م ',' دحوو21م ',' دحوو22م ',' دحوو23م ',' دحوو24م ',' دحوو25م ',' دحوو26م ',' دحوو27م ',' دحوو28م ',' دحوو29م ',' دحوو30م ',' دحوو31م ',' دحوو32م ',' دحوو33م ',' دحوو34م ',' دحوو35م ',' دحوو36م ',' دحوو37م ',' دحوو38م ',' دحوو39م ',' دحوو40م ',' دحوو41م ',' دحوو42م ',' دحوو43م ',' دحوو44م ',' دحوو45م ',' دحوو46م ',' دحوو47م ',' دحوو48م ',' دحوو49م ',' دحوو50م ',' دحوو51م ',' دحوو52م ',' دحوو53م ',' دحوو54م ',' دحوو55م '}
KlamSpeed =
{' دحوو1م ',' دحوو2م ',' دحوو3م ',' دحوو4م ',' دحوو5م ',' دحوو6م ',' دحوو7م ',' دحوو8م ',' دحوو9م ',' دحوو10م ',' دحوو11م ',' دحوو12م ',' دحوو13م ',' دحوو14م ',' دحوو15م ',' دحوو16م ',' دحوو17م ',' دحوو18م ',' دحوو19م ',' دحوو20م ',' دحوو21م ',' دحوو22م ',' دحوو23م ',' دحوو24م ',' دحوو25م ',' دحوو26م ',' دحوو27م ',' دحوو28م ',' دحوو29م ',' دحوو30م ',' دحوو31م ',' دحوو32م ',' دحوو33م ',' دحوو34م ',' دحوو35م ',' دحوو36م ',' دحوو37م ',' دحوو38م ',' دحوو39م ',' دحوو40م ',' دحوو41م ',' دحوو42م ',' دحوو43م ',' دحوو44م ',' دحوو45م ',' دحوو46م ',' دحوو47م ',' دحوو48م ',' دحوو49م ',' دحوو50م ',' دحوو51م ',' دحوو52م ',' دحوو53م ',' دحوو54م ',' دحوو55م ',' دحوو56م ',' دحوو57م ',' دحوو58م ',' دحوو59م ',' دحوو60م ',' دحوو61م ',' دحوو62م ',' دحوو63م ',' دحوو64م ',' دحوو65م ',' دحوو66م ',' دحوو67م ',' دحوو68م ',' دحوو69م ',' دحوو70م ',' دحوو71م ',' دحوو72م ',' دحوو73م ',' دحوو74م ',' دحوو75م ',' دحوو76م ',' دحوو77م ',' دحوو78م ',' دحوو79م ',' دحوو80م ',' دحوو81م ',' دحوو82م ',' دحوو83م ',' دحوو84م ',' دحوو85م ',' دحوو86م ',' دحوو87م ',' دحوو88م ',' دحوو89م ',' دحوو90م ',' دحوو91م ',' دحوو92م ',' دحوو93م ',' دحوو94م ',' دحوو95م ',' دحوو96م ',' دحوو97م ',' دحوو98م ',' دحوو99م ',' دحوو100م ',' دحوو101م ',' دحوو102م ',' دحوو103م ',' دحوو104م ',' دحوو105م ',' دحوو106م ',' دحوو107م ',' دحوو108م ',' دحوو109م ',' دحوو110م ',' دحوو111م ',' دحوو112م ',' دحوو113م ',' دحوو114م ',' دحوو115م ',' دحوو116م ',' دحوو117م ',' دحوو118م ',' دحوو119م ',' دحوو120م ',' دحوو121م ',' دحوو121م ',' دحوو122م '}
name = KlamSpeed[math.random(#KlamSpeed)]
database:set(bot_id..'Klam:Speed'..msg.chat_id_,name)
name = string.gsub(name,' دحوو1م ',' نسبة رضاك عن الأشخاص من حولك هالفترة ؟ ')
name = string.gsub(name,' دحوو2م ',' ما السيء في هذه الحياة ؟ ')
name = string.gsub(name,' دحوو3م ','الفلوس او الحب ؟')
name = string.gsub(name,' دحوو4م ',' أجمل شيء حصل معك خلال هذا الاسبوع ؟ ')
name = string.gsub(name,' دحوو5م ',' سؤال ينرفزك ؟ ')
name = string.gsub(name,' دحوو6م ',' كم في حسابك البنكي ؟ ')
name = string.gsub(name,' دحوو7م ','اكثر ممثل تحبه ؟ ')
name = string.gsub(name,' دحوو8م ',' قد تخيلت شي في بالك وصار ؟ ')
name = string.gsub(name,' دحوو9م ',' كلمة لشخص أسعدك رغم حزنك في يومٍ من الأيام ؟ ')
name = string.gsub(name,' دحوو10م ',' شيء عندك اهم من الناس ؟ ')
name = string.gsub(name,' دحوو11م ',' اول ولد لك وش راح تسميه ؟ ')
name = string.gsub(name,' دحوو12م ',' تفضّل النقاش الطويل او تحب الاختصار ؟ ')
name = string.gsub(name,' دحوو13م ',' وش أخر شي ضيعته؟ ')
name = string.gsub(name,' دحوو14م ',' عادي تتزوج من برا القبيلة؟ ')
name = string.gsub(name,' دحوو15م ',' كم مره حبيت؟ ')
name = string.gsub(name,' دحوو16م ','تبادل الكراهية بالكراهية؟ ولا تحرجه بالطيب؟')
name = string.gsub(name,' دحوو17م ','لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟')
name = string.gsub(name,' دحوو18م ','قلبي على قلبك مهما صار لمين تقولها؟')
name = string.gsub(name,' دحوو19م ','اكثر المتابعين عندك باي برنامج؟')
name = string.gsub(name,' دحوو20م ','نسبة النعاس عندك حاليًا؟')
name = string.gsub(name,' دحوو21م ','نسبه الندم عندك للي وثقت فيهم ؟')
name = string.gsub(name,' دحوو22م ','وش اسم اول شخص تعرفت عليه فالتلقرام ؟')
name = string.gsub(name,' دحوو23م ','جربت شعور احد يحبك بس انت مو قادر تحبه؟')
name = string.gsub(name,' دحوو24م ','تجامل الناس ولا اللي بقلبك على لسانك؟')
name = string.gsub(name,' دحوو25م ','عمرك ضحيت باشياء لاجل شخص م يسوى ؟')
name = string.gsub(name,' دحوو26م ',' مغني تلاحظ أن صوته يعجب الجميع إلا أنت؟ ')
name = string.gsub(name,' دحوو27م ','آخر غلطات عمرك؟ ')
name = string.gsub(name,' دحوو28م ','مسلسل كرتوني له ذكريات جميلة عندك؟ ')
name = string.gsub(name,' دحوو29م ','ما أكثر تطبيق تقضي وقتك عليه؟ ')
name = string.gsub(name,' دحوو30م ','أول شيء يخطر في بالك إذا سمعت كلمة نجوم ؟ ')
name = string.gsub(name,' دحوو31م ','قدوتك من الأجيال السابقة؟ ')
name = string.gsub(name,' دحوو32م ','أكثر طبع تهتم بأن يتواجد في شريك/ة حياتك؟ ')
name = string.gsub(name,' دحوو33م ',' أكثر حيوان تخاف منه؟ ')
name = string.gsub(name,' دحوو34م ','ما هي طريقتك في الحصول على الراحة النفسية؟ ')
name = string.gsub(name,' دحوو35م ','إيموجي يعبّر عن مزاجك الحالي؟ ')
name = string.gsub(name,' دحوو36م ','أكثر تغيير ترغب أن تغيّره في نفسك؟ ')
name = string.gsub(name,' دحوو37م ',' أكثر شيء أسعدك اليوم؟ ')
name = string.gsub(name,' دحوو38م ',' بماذا يتعافى المرء؟ ')
name = string.gsub(name,' دحوو39م ',' ما هو أفضل حافز للشخص؟ ')
name = string.gsub(name,' دحوو40م ',' ما الذي يشغل بالك في الفترة الحالية؟')
name = string.gsub(name,' دحوو41م ',' آخر شيء ندمت عليه؟ ')
name = string.gsub(name,' دحوو42م ',' شاركنا صورة احترافية من تصويرك؟ ')
name = string.gsub(name,' دحوو43م ',' تتابع انمي؟ إذا نعم ما أفضل انمي شاهدته ')
name = string.gsub(name,' دحوو44م ',' يرد عليك متأخر على رسالة مهمة وبكل برود، موقفك؟ ')
name = string.gsub(name,' دحوو45م ',' نصيحه تبدا ب -لا- ؟ ')
name = string.gsub(name,' دحوو46م ',' كتاب أو رواية تقرأها هذه الأيام؟ ')
name = string.gsub(name,' دحوو47م ',' فيلم عالق في ذهنك لا تنساه مِن روعته؟ ')
name = string.gsub(name,' دحوو48م ',' يوم لا يمكنك نسيانه؟ ')
name = string.gsub(name,' دحوو49م ',' شعورك الحالي في جملة؟ ')
name = string.gsub(name,' دحوو50م ',' أكثر سبب منطقي يمكن أن يجعلك تقرر الإبتعاد عن الشخص الذي تُحب؟ ')
name = string.gsub(name,' دحوو51م ',' كلمة لشخص بعيد؟ ')
name = string.gsub(name,' دحوو52م ',' صفة يطلقها عليك الشخص المفضّل؟ ')
name = string.gsub(name,' دحوو53م ',' أغنية عالقة في ذهنك هاليومين؟ ')
name = string.gsub(name,' دحوو54م ',' أكلة مستحيل أن تأكلها؟ ')
name = string.gsub(name,' دحوو55م ',' كيف قضيت نهارك؟ ')
name = string.gsub(name,' دحوو56م ',' تصرُّف ماتتحمله؟ ')
name = string.gsub(name,' دحوو57م ',' صفة يطلقها عليك من حولك بكثرة؟ ')
name = string.gsub(name,' دحوو58م ',' اسوء صفه فيك وتجاهد على تغييرها؟ ')
name = string.gsub(name,' دحوو59م ',' شاركنا أقوى بيت شِعر من تأليفك؟ ')
name = string.gsub(name,' دحوو60م ',' ماذا لو عاد معتذراً؟ ')
name = string.gsub(name,' دحوو61م ',' تقطع علاقتك بالشخص إذا عرفت إنه...؟ ')
name = string.gsub(name,' دحوو62م ',' كلام ودك يوصل للشخص المطلوب ؟ ')
name = string.gsub(name,' دحوو63م ',' ردة فعلك لمن يتجاهلك بالرد متعمد؟ ')
name = string.gsub(name,' دحوو64م ',' كم نسبة البيتوتية في شخصيتك؟ ')
name = string.gsub(name,' دحوو65م ',' متى تحس أنك فعلًا أنسان صبور جدًا ؟ ')
name = string.gsub(name,' دحوو66م ',' هل أنت من النوع الذي يواجه المشاكل أو من النوع الذي يهرب ؟ ')
name = string.gsub(name,' دحوو67م ',' أمنية كنت تتمناها وحققتها ؟ ')
name = string.gsub(name,' دحوو68م ',' تملك وسواس من شيء معين ؟ ')
name = string.gsub(name,' دحوو69م ',' عمرك انتقمت من أحد ؟! ')
name = string.gsub(name,' دحوو70م ',' متى تقرر تنسحب من أي علاقة ؟ ')
name = string.gsub(name,' دحوو71م ',' كلمتين تكررها دايم ؟! ')
name = string.gsub(name,' دحوو72م ',' افضل هديه ممكن تناسبك؟ ')
name = string.gsub(name,' دحوو73م ',' انت حزين اول شخص تتصل عليه؟ ')
name = string.gsub(name,' دحوو74م ',' موقف خلاك تحس انك مكسور ؟ ')
name = string.gsub(name,' دحوو75م ',' ماذا لو كانت مشاعر البشر مرئية ؟ ')
name = string.gsub(name,' دحوو76م ',' كم تشوف انك تستحق فرصه؟ ')
name = string.gsub(name,' دحوو77م ',' يهمك ظن الناس فيك ولا ؟ ')
name = string.gsub(name,' دحوو78م ',' اغنية عندك معاها ذكريات ')
name = string.gsub(name,' دحوو79م ',' موقف غير حياتك؟ ')
name = string.gsub(name,' دحوو80م ',' اكثر مشروب تحبه؟ ')
name = string.gsub(name,' دحوو81م ',' القصيدة اللي تأثر فيك؟ ')
name = string.gsub(name,' دحوو82م ',' متى يصبح الصديق غريب ')
name = string.gsub(name,' دحوو83م ',' هل وصلك رسالة غير متوقعة من شخص وأثرت فيك ؟ ')
name = string.gsub(name,' دحوو84م ',' وين نلقى السعاده برايك؟ ')
name = string.gsub(name,' دحوو85م ',' تاريخ ميلادك؟ ')
name = string.gsub(name,' دحوو86م ',' قهوه و لا شاي؟ ')
name = string.gsub(name,' دحوو87م ',' من محبّين الليل أو الصبح؟ ')
name = string.gsub(name,' دحوو88م ',' حيوانك المفضل؟ ')
name = string.gsub(name,' دحوو89م ',' كلمة غريبة ومعناها؟ ')
name = string.gsub(name,' دحوو90م ',' هل التعود على شخص والتحدث معه بشكل يومي يعتبر نوع من أنواع الحب؟ ')
name = string.gsub(name,' دحوو91م ',' كم تحتاج من وقت لتثق بشخص؟ ')
name = string.gsub(name,' دحوو92م ',' اشياء نفسك تجربها؟ ')
name = string.gsub(name,' دحوو93م ',' يومك ضاع على؟ ')
name = string.gsub(name,' دحوو94م ',' كل شيء يهون الا ؟ ')
name = string.gsub(name,' دحوو95م ',' اسم ماتحبه ؟ ')
name = string.gsub(name,' دحوو96م ',' وقفة إحترام للي إخترع ؟ ')
name = string.gsub(name,' دحوو97م ',' أقدم شيء محتفظ فيه من صغرك؟ ')
name = string.gsub(name,' دحوو98م ',' كلمات ماتستغني عنها بسوالفك؟ ')
name = string.gsub(name,' دحوو99م ',' وش الحب بنظرك؟ ')
name = string.gsub(name,' دحوو100م ',' حب التملك في شخصِيـتك ولا ؟ ')
name = string.gsub(name,' دحوو101م ',' تخطط للمستقبل ولا ؟ ')
name = string.gsub(name,' دحوو102م ',' موقف محرج ماتنساه ؟ ')
name = string.gsub(name,' دحوو103م ',' من طلاسم لهجتكم ؟ ')
name = string.gsub(name,' دحوو104م ',' اعترف باي حاجه ؟ ')
name = string.gsub(name,' دحوو105م ',' عبّر عن مودك بصوره ؟ ')
name = string.gsub(name,' دحوو106م ',' اسم دايم ع بالك ؟ ')
name = string.gsub(name,' دحوو107م ',' اشياء تفتخر انك م سويتها ؟ ')
name = string.gsub(name,' دحوو108م ','  لو بكيفي كان ؟ ')
name = string.gsub(name,' دحوو109م ',' تحب تحتفظ بالذكريات ؟ ')
name = string.gsub(name,' دحوو110م ',' اغلب وقتك ضايع في؟ ')
name = string.gsub(name,' دحوو111م ',' اكثر كلمة تنقال لك بالبيت ؟ ')
name = string.gsub(name,' دحوو112م ',' كلمتك التسليكيه ؟ ')
name = string.gsub(name,' دحوو113م ',' تزعلك الدنيا ويرضيك ؟ ')
name = string.gsub(name,' دحوو114م ',' عندك فوبيا او خوف شديد من شيء معين ؟ ')
name = string.gsub(name,' دحوو115م ','  غزل بلهجتك ؟ ')
name = string.gsub(name,' دحوو116م ',' ردة فعلك لما تنظلم من شخص ؟ ')
name = string.gsub(name,' دحوو117م ',' شيء تعترف انك فاشل فيه ؟ ')
name = string.gsub(name,' دحوو118م ',' اكثر كلمة ترفع ضغطك ؟ ')
name = string.gsub(name,' دحوو119م ',' نسبة جمال صوتك ؟ ')
name = string.gsub(name,' دحوو120م ',' كيف تتعامل مع الشخص المُتطفل ( الفضولي ) ؟ ')
name = string.gsub(name,' دحوو121م ',' من الاشياء اللي تجيب لك الصداع ؟ ')
name = string.gsub(name,' دحوو122م ',' حصلت الشخص اللي يفهمك ولا باقي ؟ ')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يرتبها » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Klam:Speed'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Speed:Tr'..msg.chat_id_) then
if not database:get(bot_id..'Speed:Tr'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ الاسرع , ترتيب }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Speed:Tr'..msg.chat_id_,true)
end 

if text == 'الحزوره' or text == 'حزوره' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Hzora'..msg.chat_id_)
Hzora = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = Hzora[math.random(#Hzora)]
database:set(bot_id..'Klam:Hzor'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يحل الحزوره ↓\n {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Klam:Hzor'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Hzora'..msg.chat_id_) then
if not database:get(bot_id..'Set:Hzora'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ حزوره }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Hzora'..msg.chat_id_,true)
end 

if text == "تعطيل معاني الاسماء" and Manager(msg) then
send(msg.chat_id_, msg.id_, '⋆ ⇽ تم تعطيل معاني الاسماء')
database:set(bot_id.."boyka:Name_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل معاني الاسماء" and Manager(msg) then
send(msg.chat_id_, msg.id_,'⋆ ⇽ تم تفعيل معاني الاسماء')
database:set(bot_id.."boyka:Name_Bots"..msg.chat_id_,"open")
end
if text and text:match("^معني (.*)$") and database:get(bot_id.."boyka:Name_Bots"..msg.chat_id_) == "open" then
local TextName = text:match("^معني (.*)$")
gk = https.request('http://sonicx.ml/Api/Name.php?Name='..URL.escape(TextName)..'')
br = JSON.decode(gk)
send(msg.chat_id_, msg.id_,br.meaning)
end

if text == 'المعاني' or text == 'معاني' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Maany'..msg.chat_id_)
Maany_Rand = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = Maany_Rand[math.random(#Maany_Rand)]
database:set(bot_id..'Maany'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','??')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يدز معنى السمايل » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Maany'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Maany'..msg.chat_id_) then
if not database:get(bot_id..'Set:Maany'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' ◈ الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ معاني }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Maany'..msg.chat_id_,true)
end 
if text == 'العكس' or text == 'عكس' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
database:del(bot_id..'Set:Aks'..msg.chat_id_)
KlamSpeed ={'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = katu[math.random(#katu)]
database:set(bot_id..'Set:Aks:Game'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يدز العكس » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Set:Aks:Game'..msg.chat_id_) or '')..'' and not database:get(bot_id..'Set:Aks'..msg.chat_id_) then
if not database:get(bot_id..'Set:Aks'..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ العكس }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Aks'..msg.chat_id_,true)
end 

if database:get(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
send(msg.chat_id_, msg.id_," ◈عذرآ لا يمكنك تخمين عدد اكبر من ال { 20 } خمن رقم ما بين ال{ 1 و 20 }\n")
return false  end 
local GETNUM = database:get(bot_id.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,5)  
send(msg.chat_id_, msg.id_,' ◈مبروك فزت ويانه وخمنت الرقم الصحيح\n ◈تم اضافة { 5 } من النقاط \n')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:incrby(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(database:get(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
database:del(bot_id..'SADD:NUM'..msg.chat_id_..msg.sender_user_id_)
database:del(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' ◈اوبس لقد خسرت في اللعبه \n ◈حظآ اوفر في المره القادمه \n ◈كان الرقم الذي تم تخمينه { '..GETNUM..' }')
else
send(msg.chat_id_, msg.id_,' ◈اوبس تخمينك غلط \n ◈ارسل رقم تخمنه مره اخرى ')
end
end
end
end
if text == 'خمن' or text == 'التخمين' then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Num = math.random(1,20)
database:set(bot_id.."GAMES:NUM"..msg.chat_id_,Num) 
send(msg.chat_id_, msg.id_,'\n ◈اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n'..' ◈ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n'..' ◈سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ')
database:setex(bot_id.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

if database:get(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
send(msg.chat_id_, msg.id_," ◈عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخرى\n")
return false  end 
local GETNUM = database:get(bot_id.."Games:Bat"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
database:del(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' ◈مبروك فزت وطلعت المحيبس بل ايد رقم { '..NUM..' }\n ◈لقد حصلت على { 3 }من نقاط يمكنك استبدالهن برسائل ')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
database:del(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
send(msg.chat_id_, msg.id_,' ◈للاسف لقد خسرت \n ◈المحيبس بل ايد رقم { '..GETNUM..' }\n ◈حاول مره اخرى للعثور على المحيبس')
end
end
end

if text == 'محيبس' or text == 'البات' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then   
Num = math.random(1,6)
database:set(bot_id.."Games:Bat"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓   
👊 ‹•› 👊 ‹•› 👊 ‹•› 👊 ‹•› 👊 ‹•› 👊
 ◈اختر لأستخراج المحيبس الايد التي تحمل المحيبس 
 ◈الفائز يحصل على { 3 } من النقاط *
]]
send(msg.chat_id_, msg.id_,TEST)
database:setex(bot_id.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end

------------------------------------------------------------------------
if text == 'المختلف' or text == 'مختلف' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
mktlf = {'😸','☠','🐼','🐇','??','🌚','⭐️','✨','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','??‍♂','??‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',};
name = mktlf[math.random(#mktlf)]
database:del(bot_id..'Set:Moktlf:Bot'..msg.chat_id_)
database:set(bot_id..':Set:Moktlf'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻🐼👻👻👻👻👻👻👻')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟')
name = string.gsub(name,'✨','💫💫💫💫💫✨💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀')
name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀')
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️')
name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يدز الاختلاف » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:Moktlf'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Moktlf:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:Moktlf'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ المختلف }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Moktlf:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'الرياضيات' or text == 'رياضيات' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Amer = {'22','30','33','60','90','2','5','36','16','88','50','10','19',};
name = Amer[math.random(#Amer)]
database:del(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_)
database:set(bot_id..':Set:Ryadeat'..msg.chat_id_,name)
name = string.gsub(name,'22','2+20=')
name = string.gsub(name,'30','10×3=')
name = string.gsub(name,'33','30+3=')
name = string.gsub(name,'60','33+27=')
name = string.gsub(name,'90','9×9+9=')
name = string.gsub(name,'2','2×1=')
name = string.gsub(name,'5','5×1=')
name = string.gsub(name,'36','6×6=')
name = string.gsub(name,'16','2×8=')
name = string.gsub(name,'88','8+80=')
name = string.gsub(name,'50','30+20=')
name = string.gsub(name,'10','2+8=')
name = string.gsub(name,'19','6+13=')
send(msg.chat_id_, msg.id_,' ◈حل المسأله الرياضيه  » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:Ryadeat'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:Ryadeat'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ رياضيات }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Ryadeat:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'انكليزي' or text == 'الانكليزي' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
Amer = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','مختلف','سدني','فلوس','اعلم','ذئب','تمساح','ذكي',};
name = Amer[math.random(#Amer)]
database:del(bot_id..'Set:English:Bot'..msg.chat_id_)
database:set(bot_id..':Set:English'..msg.chat_id_,name)
name = string.gsub(name,'ذئب','Wolf')
name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels')
name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book')
name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'سدني','Sydney')
name = string.gsub(name,'فلوس','money')
name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile')
name = string.gsub(name,'مختلف','Different')
name = string.gsub(name,'ذكي','Intelligent')
send(msg.chat_id_, msg.id_,' ◈ترجم الكلمات الاتيه  » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..':Set:English'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:English:Bot'..msg.chat_id_) then 
database:del(bot_id..':Set:English'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ `انكليزي` }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:English:Bot'..msg.chat_id_,true)
end
------------------------------------------------------------------------
if text == 'امثله' or text == 'الامثله' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ◈لا تستطيع استخدام البوت \n  ◈يرجى الاشتراك بالقناه اولا \n  ◈اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Games'..msg.chat_id_) then
mthal = {'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',};
name = mthal[math.random(#mthal)]
database:set(bot_id..'Set:Amth'..msg.chat_id_,name)
database:del(bot_id..'Set:Amth:Bot'..msg.chat_id_)
name = string.gsub(name,'جوز','ينطي____للماعده سنون')
name = string.gsub(name,'ضراطه','الي يسوق المطي يتحمل___')
name = string.gsub(name,'بيدك','اكل___محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من___نعال')
name = string.gsub(name,'شقره','مع الخيل يا___')
name = string.gsub(name,'النخله','الطول طول___والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر___')
name = string.gsub(name,'الخيل','من قلة___شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني___')
name = string.gsub(name,'المبلل','___ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة___')
name = string.gsub(name,'يركص','المايعرف___يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح___يكول حامض')
name = string.gsub(name,'العمه','___إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي___للخباز حتى لو ياكل نصه')
name = string.gsub(name,'باحصاد','اسمة___ومنجله مكسور')
name = string.gsub(name,'شهر','امشي__ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن__يا من على الحاضر لكة')
name = string.gsub(name,'القرد','__بعين امه غزال')
name = string.gsub(name,'يكحله','اجه___عماها')
send(msg.chat_id_, msg.id_,' ◈اسرع واحد يكمل المثل » {'..name..'}')
return false
end
end
------------------------------------------------------------------------
if text == ''..(database:get(bot_id..'Set:Amth'..msg.chat_id_) or '')..'' then 
if not database:get(bot_id..'Set:Amth:Bot'..msg.chat_id_) then 
database:del(bot_id..'Set:Amth'..msg.chat_id_)
send(msg.chat_id_, msg.id_,' ◈الف مبروك لقد فزت \n ◈للعب مره اخره ارسل »{ امثله }')
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_, 1)  
end
database:set(bot_id..'Set:Amth:Bot'..msg.chat_id_,true)
end
if text == 'تعطيل الالعاب' and Manager(msg) then   
if database:get(bot_id..'Lock:Games'..msg.chat_id_)  then
database:del(bot_id..'Lock:Games'..msg.chat_id_) 
Text = '\n ◈ تم تعطيل الالعاب' 
else
Text = '\n ◈ بالتاكيد تم تعطيل الالعاب'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الالعاب' and Manager(msg) then  
if not database:get(bot_id..'Lock:Games'..msg.chat_id_)  then
database:set(bot_id..'Lock:Games'..msg.chat_id_,true) 
Text = '\n ◈ تم تفعيل الالعاب' 
else
Text = '\n ◈ بالتاكيد تم تفعيل الالعاب'
end
send(msg.chat_id_, msg.id_,Text) 
end

end
return {
Poyka = games
}
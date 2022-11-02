
SLASH_SDP1 = "/sdp"

local function GetStatsDistrib()
    local lang = GetLocale()
    local critValue = GetCombatRating(CR_CRIT_MELEE)
    local hasteValue = GetCombatRating(CR_HASTE_MELEE)
    local masteryValue = GetCombatRating(CR_MASTERY)
    local verValue = GetCombatRating(CR_VERSATILITY_DAMAGE_DONE)
    local statTotal = critValue + hasteValue + masteryValue + verValue
    
    print()
    print("---- Secondary Weight Distribution By Fatrog -----")
    print()
    print("## "..langArr[lang][1].." : .........".. statTotal    .. "  -> 100%")
    print(langArr[lang][2].." : ...".. critValue    .."    -> ".. round(((critValue / statTotal) * 100),2) .."%")
    print(langArr[lang][3].." : ..................".. hasteValue   .."    -> ".. round(((hasteValue / statTotal) * 100),2) .."%")
    print(langArr[lang][4].." : ...........".. masteryValue .."    -> ".. round(((masteryValue / statTotal) * 100),2) .."%")
    print(langArr[lang][5].." : .....".. verValue     .."    -> ".. round(((verValue / statTotal) * 100),2) .."%")
    print()
    print("-------------------------------------------------")
    print()

end

SlashCmdList["SDP"] = GetStatsDistrib

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
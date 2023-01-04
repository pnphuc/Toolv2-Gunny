
DEFAULT_ENHANCE_TIME = 12;	
VALUE_ENHANCE_PER_LEVEL = 500;			

function GetSkillLevelData(levelname, data, level)
	if (levelname == "lifereplenish_v") then
		return GetStatusEnhance_V(level);
	end
	if (levelname == "manareplenish_v") then
		return GetStatusEnhance_V(level);
	end
	strNull = "";
	return strNull
end

function GetStatusEnhance_V(level)
	local enhance_value = VALUE_ENHANCE_PER_LEVEL * level;
	return Param2String(enhance_value, DEFAULT_ENHANCE_TIME, 0);
end

function Param2String(Param1, Param2, Param3)
	return Param1..","..Param2..","..Param3
end;
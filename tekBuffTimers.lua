
local SECONDS_PER_MINUTE = 60
local SECONDS_PER_HOUR   = 60 * SECONDS_PER_MINUTE
local SECONDS_PER_DAY    = 24 * SECONDS_PER_HOUR

function SecondsToTimeAbbrev(seconds)
	if seconds <= 0 then return "" end

	local days = seconds / SECONDS_PER_DAY
	if days >= 1 then return string.format("%.1fd", days) end

	local hours = seconds / SECONDS_PER_HOUR
	if hours >= 1 then return string.format("%.02fh", hours) end

	local minutes = seconds / SECONDS_PER_MINUTE
	local seconds = seconds % SECONDS_PER_MINUTE
	if minutes >= 1 then return string.format("%d:%02d", minutes, seconds) end
	return string.format("%ds", seconds)
end


SecondsToTimeAbbrev = function(time)
	local hr, m, s, text
	if time <= 0 then text = ""
	elseif time < 3600 then
		m = floor(time / 60)
		s = mod(time, 60)
		text = (m == 0 and format("%d", s)) or format("%d:%02d", m, s)
	else
		hr = floor(time / 3600)
		m = floor(mod(time, 3600) / 60)
		text = format("%d.%2d h", hr, m)
	end
	return text
end

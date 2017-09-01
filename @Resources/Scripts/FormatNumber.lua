function FormatCommas(numVar)
	assert(tonumber(numVar), 'Function FormatCommas() expects a number.')
	local prefix, number = string.match(numVar, '^([^%d]*%d)(%d*)')
	return prefix..(number:reverse():gsub('(%d%d%d)', '%1,'):reverse())
end

function Update()
	number = SELF:GetOption('Number')
	return FormatCommas(number)
end

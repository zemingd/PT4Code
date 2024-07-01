N = readline.chomp.split.map(&:to_s)[0]

if N.slice(0,2).to_i == 0 or N.slice(2,2).to_i == 0
	print 'NA'
elsif N.slice(0,2).to_i > 12 
	if N.slice(2,2).to_i > 12
		print 'NA'
	else
		print 'YYMM'
	end
else
	if N.slice(2,2).to_i > 12
		print 'MMYY'
	else
		print 'AMBIGUOUS'
	end
end


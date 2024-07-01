N = readline.chomp.split.map(&:to_s)[0]

if N.slice(0,2).to_i > 12 || N.slice(2,2).to_i == 0
	if N.slice(2,2).to_i > 12 || N.slice(2,2).to_i == 0
		print 'NA'
	else
		print 'YYMM'
	end
else
	if N.slice(2,2).to_i > 12 || N.slice(2,2).to_i == 0
		print 'MMYY'
	else
		print 'AMBIGUOUS'
	end
end

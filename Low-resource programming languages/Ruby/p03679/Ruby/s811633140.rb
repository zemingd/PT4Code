X, A, B = gets.split.map(&:to_i)

if A-B >= 0
	print "delicious"
elsif A+X >= B
	print "safe"
else
	print "dangerous"
end


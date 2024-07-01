A,B,C,D = gets.chomp.split.map(&:to_i)
if A+B == C+D
	print "Balanced\n"
else
	print "#{A+B>C+D ? "Left" : "Right"}\n"
end
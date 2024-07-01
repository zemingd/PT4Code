x = gets.chomp.split('').map
['+', '-'].repeated_permutation(3){|ops|
	s = x.zip(ops).join
	if (eval s) == 7
		puts s + "=7"
		break
	end
}
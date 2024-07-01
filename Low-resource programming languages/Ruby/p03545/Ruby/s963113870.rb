a,b,c,d=gets.chomp.chars.map &:to_i
[?+,?-].repeated_permutation(3){|x,y,z|
	s=[a,x,b,y,c,z,d]*""
	if eval(s)==7
		puts s+"=7"
		exit
	end
}
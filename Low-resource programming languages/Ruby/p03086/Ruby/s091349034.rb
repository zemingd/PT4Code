s=gets.chomp
str=nil
(s.size).downto(0) do|i|
	if(s=~/[AGCT]{#{i}}/)
		str=s.match(/[AGCT]{#{i}}/)
		break
	end
end
p str[0].size
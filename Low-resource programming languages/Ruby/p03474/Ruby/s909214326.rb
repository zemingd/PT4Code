A,B = gets.chomp.split.map(&:to_i)
S = gets.chomp

if(S =~ /[0-9]{#{A}}-[0-9]{#{B}}/)
	puts "Yes"
else
	puts "No"
end

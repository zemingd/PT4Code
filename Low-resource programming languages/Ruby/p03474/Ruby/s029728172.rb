A,B=gets.chomp.split(' ').map{|n| n.to_i}
S,dum=gets.chomp.split(' ').map{|n| n}

if(S =~ /[0-9]{#{A}}-[0-9]{#{B}}/)
	puts "Yes"
else
	puts "No"
end


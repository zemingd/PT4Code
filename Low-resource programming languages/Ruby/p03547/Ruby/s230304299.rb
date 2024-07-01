x,y=gets.chomp.split(' ').map{|n| n}

if(x < y)
	puts "<"
elsif(x > y)
	puts ">"
else
	puts "="
end


n,dum=gets.chomp.split(' ').map{|n| n}
a,b,c,d=n.split("").map{|i| i.to_i}

if(a+b+c+d==7)
	puts "#{a}+#{b}+#{c}+#{d}=7"
elsif(a+b+c-d==7)
	puts "#{a}+#{b}+#{c}-#{d}=7"
elsif(a+b-c+d==7)
	puts "#{a}+#{b}-#{c}+#{d}=7"
elsif(a+b-c-d==7)
	puts "#{a}+#{b}-#{c}-#{d}=7"
elsif(a-b+c+d==7)
	puts "#{a}-#{b}+#{c}+#{d}=7"
elsif(a-b+c-d==7)
	puts "#{a}-#{b}+#{c}-#{d}=7"
elsif(a-b-c+d==7)
	puts "#{a}-#{b}-#{c}+#{d}=7"
elsif(a-b-c-d==7)
	puts "#{a}-#{b}-#{c}-#{d}=7"
end

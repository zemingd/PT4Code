n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
x = 0
found_count = 0
res = []
while x < m
    found_count = 0
	while found_count == 0 and x < m
    	x += 1.0
    	a.each do |num|
      		if (x / num).to_s =~ /^[0-9]+[.]5$/
        		found_count += 1
      		end
    	end
  
    	if found_count != n
      		found_count = 0
    	end
  	end
  if x < m
	  res << x
  end
end
p res.length
str = gets.chomp
len = str.length
ans = 0
key = 0
 
if	len%2 == 1
	ans = 1
else
  
len.times do |i|
	if key == 0
		if str[i] == "h"
			key = 1
		else
			ans = 1
          	break
		end
	else
		if str[i] == "i"
			key = 0
		else
			ans = 1
          	break
		end
	end
end
end
 
if ans == 0
	puts "Yes"
else
	puts "No"
end
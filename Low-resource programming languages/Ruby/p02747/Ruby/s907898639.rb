str = gets
len = str.length
key = 0
if	len%2 == 1
	key = 0
else
  	len /= 2
  	len.times do |i|
    	if str[2*i] == "h" && str[2*i+1] == "i"
       	  key = 1
        else
          key = 0
          break
        end
    end
end

if key == 1
	puts "Yes"
else
	puts "No"
end
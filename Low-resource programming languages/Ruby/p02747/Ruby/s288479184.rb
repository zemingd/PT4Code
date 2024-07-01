str = gets
len = str.length
key = 0
if	len%2 == 1
	puts "No"
	exit
else
  	len /= 2
  	len.times do |i|
    	if str[2*i] == "h" && str[2*i+1] == "i"
        key = 1
        else
          puts "No"
          exit
        end
    end
end

puts "Yes"
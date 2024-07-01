a,b = gets.chomp.split(" ")
c = (a+b).to_i
if Math.sqrt(c).to_s.split(".")[-1] == '0'
	puts "Yes"
else
	puts "No"
end

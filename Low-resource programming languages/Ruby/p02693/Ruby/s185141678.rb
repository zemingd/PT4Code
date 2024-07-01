k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map{|e|e.to_i}

c = b-a+1
if c>=k || (a<=k && k<=b)then 
	print("OK")
else
	print("NG")
end
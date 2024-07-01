k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map{|e|e.to_i}

a = b-a+1
if a>=k then 
	print("OK")
else
	print("NG")
end
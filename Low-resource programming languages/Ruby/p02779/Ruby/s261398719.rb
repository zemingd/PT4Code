n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|e|e.to_i}

if a.length == a.uniq.length then
	print("YES")
else
	print("NO")
end
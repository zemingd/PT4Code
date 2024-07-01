n = gets.chomp.to_i
a = gets.chomp.split(" ").map{|e|e.to_i}

if a.length == a.uniq.length then
	p("YES")
else
	p("NO")
end
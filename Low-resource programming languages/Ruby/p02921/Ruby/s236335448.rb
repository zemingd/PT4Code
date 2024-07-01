s = gets.chomp.split(" ")
t = gets.chomp.split(" ")
results = 0
3.times do |i|
	if s[i] == t[i]
      results+=1
    end
end
puts results
n = gets.to_i
s = gets.chomp
m = Array.new(n-1,0)
for j in 0..n-2
    s1 = s[0..j]
    s2 = s[(j+1)..(n-1)]
	for i in "a".."z"
  		if s1.include?(i) && s2.include?(i)
  		    m[j] += 1
        end
    end 
end
puts m.max
n = gets.to_i
s = gets.chomp
cnt = []
m = 0
a = [*"a".."z"]
for j in 0..n-1
	for i in 0..25
  		if (s[0]..s[j]).include?(a[i]) && (s[j+1]..s[s.length-1]).include?(a[i])
  		    m += 1
        end
    end
    cnt << m
    m = 0
end
puts cnt.max
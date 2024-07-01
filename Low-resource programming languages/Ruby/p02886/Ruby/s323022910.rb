a = gets.to_i
b = gets.chomp.split(' ').map(&:to_i)

result = 0
for i in 0..a-1 do
	for j in i+1..a-1 do
      result += b[i] * b[j]
    end
end

print "#{result}"
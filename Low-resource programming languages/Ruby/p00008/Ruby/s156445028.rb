# Sum of 4 Integers

x = []
i = j = k = l = 10
i.times{|i|j.times{|j|k.times{|k|l.times{|l|x << i+j+k+l}}}}

while n = gets.to_i do
	if n > 36
		puts 0
		next
	end
	puts x.select{|e| e == n}.size
end
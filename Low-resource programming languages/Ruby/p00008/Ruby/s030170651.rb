# Sum of 4 Integers

x = []
i = j = k = l = 10
i.times{|i|j.times{|j|k.times{|k|l.times{|l|x << i+j+k+l}}}}
xx = x.group_by{|e|e}
while n = ARGF.gets.to_i do
	puts xx[n].size
end
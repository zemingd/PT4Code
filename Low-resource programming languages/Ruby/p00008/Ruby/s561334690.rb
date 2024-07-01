# Sum of 4 Integers

x = Array.new(50, 0)
i = j = k = l = 10
i.times{|i|j.times{|j|k.times{|k|l.times{|l|x[i+j+k+l] += 1 }}}}

while line = ARGF.gets do
	puts x[line.to_i]
end
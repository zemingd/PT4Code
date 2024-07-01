n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_s.split(//)
end

ary = ary.map(&:sort)
anaglam = 0

n.times do |i|
	(i+1..(n-1)).to_a.each do |j|
		anaglam += 1 if ary[i] == ary[j]
	end
end

puts anaglam

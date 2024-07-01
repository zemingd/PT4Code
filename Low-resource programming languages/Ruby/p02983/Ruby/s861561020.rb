L, R = gets.chomp.split.map(&:to_i)
min = 2020
(L..R).each do |i|
	((i+1)..R).each do |j|
      tmp = (i * j) % 2019
      min = tmp if min > tmp
	end
end

puts min
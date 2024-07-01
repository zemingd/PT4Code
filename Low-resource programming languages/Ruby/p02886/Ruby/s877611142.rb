n = gets.to_i
d = gets.chomp.split
n.times do |i|
    d[i] = d[i].to_i
end

d_combinations = d.combination(2).to_a
sum = 0
d_combinations.each do |d_combi|
    sum += d_combi[0] * d_combi[1]
end

puts sum
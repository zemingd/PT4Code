n = gets
dicks = gets.chomp.split.map(&:to_i)

count = 0
dicks.combination(3) do |comb|
  count += 1 if comb[0] < comb[1]+comb[2] && comb[1] < comb[0]+comb[2] && comb[2] < comb[0]+comb[1]
end

puts count
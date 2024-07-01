N = gets.to_i
As = gets.split.map &:to_i
boss = As.tally

puts (1..N).map{ boss[_1] || 0 }
x = gets.to_i

pow = []
(1..31).each do |b|
  pow << [*2..10].map { |a| b**a <= x ? b**a : 0 }
end

puts pow.flatten.uniq.sort.max

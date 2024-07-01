n, k = gets.split.map(&:to_i)
hps = gets.split.map(&:to_i).sort.reverse

k.times { hps.shift }

puts hps.inject(:+) || 0
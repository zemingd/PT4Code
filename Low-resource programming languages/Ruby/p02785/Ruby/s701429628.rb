N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort

puts H[0..-(K + 1)].inject(:+).to_i
n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i).sort.reverse!

k = [n, k].min

k.times do |i|
  h[i] = 0
end

puts h.sum

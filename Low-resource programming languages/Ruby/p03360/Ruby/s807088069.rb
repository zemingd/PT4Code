a, b, c = gets.chomp.split(" ").map(&:to_i).sort

k = gets.chomp.to_i

k.times do
  c *= 2
end
puts a + b + c
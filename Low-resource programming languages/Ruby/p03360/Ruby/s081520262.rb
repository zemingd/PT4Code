a = gets.chomp.split(" ").map(&:to_i).sort
k = gets.chomp.to_i

k.times do
  a[2] = a[2] * 2
end

puts a.inject(:+)
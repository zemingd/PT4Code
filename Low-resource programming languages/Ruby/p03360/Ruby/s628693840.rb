a,b,c = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i

arr = [a,b,c].sort
k.times do
  arr[-1] *= 2
end

puts arr.inject(:+)
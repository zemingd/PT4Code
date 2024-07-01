n,l = gets.split.map(&:to_i)
arr = []
n.times do
  arr << gets.chomp
end

puts arr.sort.join
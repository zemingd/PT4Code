n,l = gets.split.map(&:to_i)
str = []
n.times do
  str << gets.chomp.to_s
end

puts str.sort.inject(:+)
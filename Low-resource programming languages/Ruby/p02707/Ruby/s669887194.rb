n =gets.to_i
a = gets.split.map(&:to_i)
n.times do |i|
  sum = a.count(i+1)
  puts sum
end
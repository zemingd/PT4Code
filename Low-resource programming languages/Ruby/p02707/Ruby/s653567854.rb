n = gets.to_i
a = gets.split.map(&:to_i)
n.times do |i|
  puts a.count(i-1)
end

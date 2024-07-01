n = gets.to_i
a_list = gets.split.map(&:to_i)
n.times do |i|
  puts a_list.count(i+1)
end
n = gets.to_i
a = gets.split.map{|i| i.to_i - 1}
n.times do |i|
  puts a.count(i)
end

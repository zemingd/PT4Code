n = gets.to_i
a_list = gets.split.map(&:to_i).group_by {|i|i}
n.times do |i|
  res = a_list[i+1]&.size
  puts res ? res : 0
end
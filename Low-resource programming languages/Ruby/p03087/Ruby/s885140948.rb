n,q = gets.chomp.split.map(&:to_i)
str = gets.chomp

q.times do |line|
  ft = gets.chomp.split(" ")
  from = ft[0].to_i - 1
  to = ft[1].to_i - 1
  puts str[from..to].scan(/AC/).size()
end

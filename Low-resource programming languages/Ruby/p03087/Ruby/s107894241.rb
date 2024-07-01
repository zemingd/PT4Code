n, q = gets.split.map(&:to_i)
s = gets.chomp
q.times do
  l, r = gets.split.map{|i| i.to_i - 1}
  puts s[l, r].scan(/AC/).size
end

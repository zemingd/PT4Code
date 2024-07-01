n, q = gets.split.map(&:to_i)
s = gets.chomp
lrs = []
q.times { lrs << gets.split.map{|i| i.to_i - 1}}
lrs.each do |e|
  puts s[e[0], e[1]].scan(/AC/).size
end
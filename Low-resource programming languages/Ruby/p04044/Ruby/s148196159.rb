n, l = gets.split(' ').map{|i| i.to_i}
s = []
n.times do
  s << gets.chomp
end
puts s.sort.join
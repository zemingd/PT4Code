n, l = gets.chomp.split(' ').map(&:to_i)
s = []
n.times do |i|
  s[i] = gets.chomp
end
puts s.sort.join

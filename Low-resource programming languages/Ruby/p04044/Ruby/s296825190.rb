n, l = gets.chomp.split(' ').map(&:to_i)

s = []

n.times do
  s << gets.chomp
end

puts s.sort.join

n, l = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.to_s.chomp
end
puts s.sort!.join

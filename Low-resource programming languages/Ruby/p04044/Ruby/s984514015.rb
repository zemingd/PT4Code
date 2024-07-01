n,_l = gets.strip.split.map(&:to_i)
s = []
n.times do
  s << gets.strip
end

puts s.sort.join("")
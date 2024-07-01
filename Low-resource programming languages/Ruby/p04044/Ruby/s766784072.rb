nl = gets.split
n = nl[0].to_i
l = nl[1].to_i

s = []
n.times do
    s << gets.chomp
end

s.sort!
puts s.join

n = gets.to_i
d = gets.chomp.split
n.times do |i|
    d[i] = d[i].to_i
end

d.sort!

puts d[n/2] - d[(n/2)-1]
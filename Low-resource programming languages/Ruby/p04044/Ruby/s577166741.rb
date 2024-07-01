n,l = gets.split.map(&:to_i)
s = []
n.times do |i|
    s[i] = gets.chomp!
end

s.sort!
puts s.join
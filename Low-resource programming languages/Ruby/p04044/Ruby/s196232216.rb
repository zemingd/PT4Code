n, l = gets.split.map(&:to_i)
s = []
for i in 0...n do
  s[i] = gets.chomp
end
s.sort!
puts s.join

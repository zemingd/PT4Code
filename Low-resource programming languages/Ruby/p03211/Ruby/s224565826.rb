s = gets.chomp
m = []
l = []
for a in 0..s.length - 2
  m << s[a..a + 2].to_i
end
m.each { |x| l << (753 - x).abs }
l.sort!
puts l[0]

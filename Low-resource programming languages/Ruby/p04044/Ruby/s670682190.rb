a = []
c = []
a = gets.split.map(&:to_i)
while s = gets
  c.push(s.split.map(&:to_i))
end
c.sort!
print c.join("")
print "\n"
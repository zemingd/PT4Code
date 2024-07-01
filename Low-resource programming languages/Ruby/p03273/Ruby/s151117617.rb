h, w = gets.chomp.split.map(&:to_i)
a = []
h.times do |i|
  s = gets.chomp.split("")
  next if s.uniq.length == 1 && s[0] == '.'
  a.push(s)
end

b = a.transpose
c = []
w.times do |i|
  s = b[i]
  next if s.uniq.length == 1 && s[0] == '.'
  c.push(s)
end

puts c.transpose.map{|s| s.join}

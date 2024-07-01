table = Array.new(51, 0)
a = b = c = d = 10
a.times {|a| b.times {|b| c.times {|c| d.times {|d| table[a+b+c+d] += 1}}}}

while n = gets
  puts table[n.to_i]
end
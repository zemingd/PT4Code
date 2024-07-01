N = gets.to_i
hist = Hash.new {|h, k| h[k] = 0 }
A = gets.split.map &:to_i
a = A.group_by{|i|i}.select {|i, a| a.size>=2 }.map(&:first).sort
b = A.group_by{|i|i}.select {|i, a| a.size>=4 }.map(&:first).sort
aa = a[-2]*a[-1] rescue 0
bb = b[-1]**2 rescue 0
puts [aa, bb].max

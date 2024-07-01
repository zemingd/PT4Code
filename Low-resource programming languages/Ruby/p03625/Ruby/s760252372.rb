N = gets.to_i
hist = Hash.new {|h, k| h[k] = 0 }
A = gets.split.map &:to_i
a = A.group_by{|i|i}.select {|i, a| a.size>=2 }.map(&:first).sort
if a[-2]
  puts a[-2]*a[-1]
else
  puts 0
end

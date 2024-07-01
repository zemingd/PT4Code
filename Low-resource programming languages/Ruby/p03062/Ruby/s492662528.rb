n = gets.to_i
a = gets.split.map(&:to_i)

abs = a.map(&:abs)

puts abs.inject(:+) -
if a.select {|i| i < 0 }.count.odd?
  abs.min * 2
else
  0
end

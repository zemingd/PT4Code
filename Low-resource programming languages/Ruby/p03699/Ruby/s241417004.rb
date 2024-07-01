n = gets.to_i
s = []
n.times { s << gets.to_i }

zero = s.select {|v| v % 10 == 0}
collect = s.select {|v| v % 10 != 0}.sort
if collect.empty?
  puts 0
  exit
end

val = s.inject(:+)
if val % 10 != 0
  puts val
  exit
end

puts collect[1..-1].inject(:+) + zero.inject(:+)

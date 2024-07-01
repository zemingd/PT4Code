require 'pp'

N = readline.to_i
A = readline.chomp.split.map(&:to_i)

sign = 0
A.each do |i|
  sign += 1 if i < 0
end

if sign % 2 == 0
  puts A.map {|a| a.abs }.inject(:+)
else
  m = A.min_by {|a| a.abs}
  puts( A.map {|a| a.abs }.inject(:+) - 2*m.abs )
end

n = gets.to_i
s = gets.chomp
max = 0
require 'set'
(1...n).each do |i|
  a = Set.new(s[0,i].split('').uniq)
  b = Set.new(s[i,n-i].split('').uniq)
  m = (a & b).size
  max = [max,m].max
end
puts max
require 'pp'

N,M,C = readline.chomp.split.map(&:to_i)
B = readline.chomp.split.map(&:to_i)
count = 0
N.times do |i|
  a = readline.chomp.split.map(&:to_i)
  ans = B.zip(a).map {|bi,ai| bi*ai}.inject(:+) + C
  count += 1 if ans > 0
end
puts count


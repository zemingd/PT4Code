n = gets.to_i
s = []
n.times { s << gets.to_i }

points = []
1.upto(n) do |i|
  s.permutation(i) { |a| points << a.inject(:+) }
end

u = points.uniq.sort.reverse
u.each do |a|
  next if a % 10 == 0
  puts a
  exit
end

puts 0

n, m = gets.chomp.split.map(&:to_i)
a_b = []
n.times do
  a_b << gets.chomp.split.map(&:to_i)
end
result = a_b.sort {|x,y| (x[0] == y[0]) ? (x[1] <=> y[1])*(-1) : x[0] <=> y[0]}
sum = 0
1.upto(m) do |i|
  sum = result[i-1][1] if i + result[i-1][0] <= m 
end
puts sum
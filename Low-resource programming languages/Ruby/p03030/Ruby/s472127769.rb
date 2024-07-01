n = gets.chomp.to_i
a = []
i = 0
while g = gets&.chomp&.split
  i += 1
  a << [g[0], g[1].to_i, i]
end
a = a.sort{|x, y|x[0] == y[0] ? x[1] <=> y[1] : y[0] <=> x[0] }.reverse
a.each {|aaa|p aaa[2]}

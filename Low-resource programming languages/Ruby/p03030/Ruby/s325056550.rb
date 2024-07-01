N = gets.chomp.to_i
1.upto(N).map { |i|
  s, p = gets.chomp.split
  [s, -p.to_i, i]
}.sort.each { |_, _, e| puts e }

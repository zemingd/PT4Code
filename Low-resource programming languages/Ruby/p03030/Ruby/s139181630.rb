n = gets.to_i
restrans = {}
n.times do |i|
  restrans[i + 1] = gets.split.map(&:chomp)
end

restrans.sort { |a, b|
  (a[1][0] <=> b[1][0]) != 0 ? a[1][0] <=> b[1][0] : -a[1][1].to_i <=> -b[1][1].to_i
}.each { |x| puts x[0] }

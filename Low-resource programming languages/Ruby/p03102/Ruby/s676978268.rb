N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = readlines.map {|a| a.split.map(&:to_i) }

puts A.count {|a|
  M.times.inject(0) {|r,i| r + a[i]*B[i] } + C > 0
}

N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
count = N.times.count {
  a = gets.split.map(&:to_i)
  M.times.inject(C){|s, i| s + a[i] * B[i] } > 0
}
puts count

N,K = gets.split.map(&:to_i)
A = readlines.map {|s| s.split.map(&:to_i) }.sort

n = 0
puts A.each {|a,b|
  n += b
  break a if K <= n
}
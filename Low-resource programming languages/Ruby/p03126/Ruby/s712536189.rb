N, M  = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a = a.drop(1)
a.sort!
(N-1).times {
  b = gets.split.map(&:to_i) 
  b = b.drop(1)
  b.sort!
 a = a & b
}
 
puts a.length
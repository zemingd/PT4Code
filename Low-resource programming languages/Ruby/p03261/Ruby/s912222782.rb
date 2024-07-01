N=gets.to_i
t = nil
dd = {}
puts (0...N).all?{
  w = gets.chomp
  next if dd[w]
  next false if t && t != w[0]
  t = w[-1]
  dd[w] = 1
  true
} ? "Yes" : "No"
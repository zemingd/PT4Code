N = gets.to_i
h = {}
N.times{ 
  x = gets.to_i
  h[x] = (h[x] || 0) + 1
}
p h.values.map{ |x| x % 2 }.inject(:+)
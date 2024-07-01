n, k = readline.split.map(&:to_i)
puts (1..n).map{|n|
  d = n
  r = 1
  while d < k
    r *= 0.5
    d *= 2
  end
  r
}.reduce(:+)/n
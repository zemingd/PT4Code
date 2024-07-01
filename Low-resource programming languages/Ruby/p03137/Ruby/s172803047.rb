C, N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i).sort

if N == 1
  p 1
  exit
end

p (1..(P.size - 1)).to_a.combination(C - 1).map {|indice|
  indice.unshift(0)
  indice << P.size
  cost = 0
  (indice.size - 1).times {|i|
    cost += P[indice[i + 1] - 1] - P[indice[i]]
  }
  cost
}.min
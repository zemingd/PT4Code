N = gets.to_i
S = gets.chomp
westing = 0
W = S.chars.map{ |a|
  w = westing
  westing += a == "W" ? 1 : 0
  w
} + [westing]

E = N - W[-1]
p S.chars.map.with_index{ |a,i|
  E - (i+1) + W[i+1] + W[i]
}.min
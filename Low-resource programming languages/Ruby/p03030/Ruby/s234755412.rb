N = gets.to_i
S, P = [], []
(0..N-1).each do |i|
  S[i], P[i] = gets.split.map(&:to_s)
end
hash = []
(0..N-1).each do |i|
  hash.push([i+1, S[i], P[i]])
end
hash.sort{|a, b| (a[1] <=> b[1]).nonzero? || (b[2] <=> a[2])
}.each do|key, valS, valP|
  puts key.to_i
end
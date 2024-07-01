N,Q = gets.split(" ").map(&:to_i);
S = gets.chomp
for c in 1..Q do
  l,r = gets.split(" ").map(&:to_i);
  _s = S[l-1..r-1]
  ac = _s.scan("AC")
  puts ac.length
end
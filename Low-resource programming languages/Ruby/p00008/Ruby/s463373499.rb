sums = []
(0..9).to_a.repeated_permutation(4) { |a, b, c, d| sums << a + b + c + d }
while n = gets
  c = 0
  sums.each { |s| c += 1 if s == n.to_i }
  puts c
end
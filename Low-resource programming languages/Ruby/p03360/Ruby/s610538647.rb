A, B, C = gets.chomp.split.map(&:to_i)
K = gets.chomp.to_i
K.times do
  A *= 2 if A == [A, B, C].max
  B *= 2 if B == [A, B, C].max
  C *= 2 if C == [A, B, C].max
end
puts [A, B, C].inject(:+)
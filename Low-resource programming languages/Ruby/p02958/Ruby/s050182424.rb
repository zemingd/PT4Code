N = gets.strip.to_i
A = gets.strip.split.map(&:to_i)

ct = 0
(1..N).each do |i|
  ct += 1 unless i == A[i - 1]
end

puts ct <= 2 ? 'YES' : 'NO'

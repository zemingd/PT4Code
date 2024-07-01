N = gets.chomp.to_i
P = gets.chomp.split(" ").map(&:to_i)
Q = gets.chomp.split(" ").map(&:to_i)

pi = -1
qi = -1

(1..N).to_a.permutation(N).sort.each_with_index do |x, i|
  pi = i if x == P
  qi = i if x == Q
  break if pi >= 0 && qi >= 0
end

puts (pi - qi).abs

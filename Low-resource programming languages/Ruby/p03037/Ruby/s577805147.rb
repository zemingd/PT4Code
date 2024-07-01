N, M = gets.split.map(&:to_i)
C = Array.new(N + 2, 0)
M.times do 
  l,r = gets.split.map(&:to_i)
  C[l] += 1
  C[r + 1] -= 1
end
(1 .. N).each{|i| C[i] += C[i - 1]}
puts (1 .. N).count{|i| C[i] == M }

N = gets.to_i
A = gets.split.map(&:to_i)

M = Array.new(N + 1, 0)
A.each do |u|
  M[u] += 1
end
puts M[1,N]
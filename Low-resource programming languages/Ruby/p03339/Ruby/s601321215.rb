N = gets.to_i
S = gets.chomp
E = Array.new(N + 1, 0)
W = Array.new(N + 1, 0)

(1 .. N).each do |i|
  if S[i - 1] == 'E'
    E[i] = E[i - 1] + 1
    W[i] = W[i - 1]
  else
    E[i] = E[i - 1]
    W[i] = W[i - 1] + 1
  end
end
puts (1 .. N).map{|i| W[i - 1] + E[N] - E[i]}.min



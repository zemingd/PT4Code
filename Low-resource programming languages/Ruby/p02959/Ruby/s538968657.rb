N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

cnt = 0
rest = A[N]
(N-1).downto(0) do |i|
  rest += A[i]
  c = [B[i], rest].min
  cnt += c
  rest -= c
end
puts cnt
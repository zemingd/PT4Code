N = $stdin.gets.to_i
A = $stdin.gets.chomp.split(" ").map(&:to_i)

ans = 0
for i in 0..(N - 2) do
  for j in (i + 1)..(N - 1) do
    ans += A[i] ^ A[j]
  end
end
p ans.modulo(10 ** 9 + 7)
# N = gets.chomp.to_i
N, K = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

cnt = 0
while (N > 0) do
  cnt += 1
  N /= K
end  

p cnt
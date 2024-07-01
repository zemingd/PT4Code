N, K = gets.chomp.split.map(&:to_i)
# S = gets.chomp

# Ex.
# N = 3, K = 10
# Start: 1 or 2 or 3
# If start is 1, 
  # 1, 2, 4, 8, 16, so we have to win 4 times. This is (1/2)^4
# If start is 2,
  # 2, 4, 8, 16, so we have to win 3 times. This is (1/2)^3
# If start is 3,
  # 3, 6, 12, so we have to win 2 times. This is (1/2)^2
# So, ((1/2)^4 + (1/2)^3 + (1/2)^2)/3

pairs = []

r = 0
1.upto(N).each do |n|  # n is start
  i = 0
  while (n < K) do
    n *= 2
    i += 1
  end
  r += 0.5 ** i
end

r /= N

p r
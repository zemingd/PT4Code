# N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp.chars
# T = gets.chomp.chars
N = S.size

# Try 0101...
ans1 = 0
0.upto(N-1).each do |i| # even should 0, odd should be 1
  target = (i % 2 == 0) ? '0' : '1'
  if S[i] != target
    ans1 += 1
  end
end
# p "ans1: #{ans1}"

# Try 1010...
ans2 = 0
0.upto(N-1).each do |i| # even should 0, odd should be 1
  target = (i % 2 == 0) ? '1' : '0'
  if S[i] != target
    ans2 += 1
  end
end
# p "ans2: #{ans2}"

p [ans1, ans2].min
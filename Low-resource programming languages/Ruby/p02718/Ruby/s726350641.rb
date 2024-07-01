# N = gets.chomp.to_i
# N, M = gets.chomp.to_i
N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

sum = A.inject(&:+)

cnt = 0
0.upto(N-1).each do |i|
  # p A[i]
  # p M
  # p A[i] * 4 * M
  if ((A[i] * 4 * M) >= sum)
    cnt += 1
  end
end

if (cnt >= M)
  print "Yes\n"
else
  print "No\n"
end

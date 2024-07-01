N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

ans = 0
k = 1
N.times do |i|
  if A[i] != k
    ans += 1
  else
    k += 1
  end
end
if ans == N
  puts -1
else
  puts ans
end

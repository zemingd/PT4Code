N,M = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)
A = []
B = []

(1..M).each do |i|
  A[i],B[i] = gets.chomp.split.map(&:to_i)
end

ans = [1] * N

(1..M).each do |j|
  if H[A[j]-1] > H[B[j]-1]
    ans[B[j]-1] = 0
  elsif H[A[j]-1] < H[B[j]-1]
    ans[A[j]-1] = 0
  else
    ans[A[j]-1] = 0
    ans[B[j]-1] = 0
  end
end

puts ans.count(1)
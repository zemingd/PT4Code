N = gets.to_i
A = gets.split.map(&:to_i)

ans = []
N.times do |i|
  ans[A[i]-1] = i+1
end

N.times do |i|
  puts ans[i]
end

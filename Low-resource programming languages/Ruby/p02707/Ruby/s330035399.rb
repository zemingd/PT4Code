N = gets.to_i
a = gets.split.map(&:to_i)

p = 0
ans = []
N.times do |i|
  ans[i] = 0
end


(N-1).times do |i|
  ans[a[i] - 1] = ans[a[i] - 1] + 1
end
puts ans
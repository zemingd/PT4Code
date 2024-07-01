n, k = gets.split.map(&:to_i)
arr = Array.new(10**5, 0)
n.times do
  v, t = gets.split.map(&:to_i)
  arr[v - 1] += t
end

ans = 0
cnt = 0
(10**5).times do |i|
  cnt += arr[i]

  if cnt >= k
    ans = i + 1
    break
  end
end
puts ans
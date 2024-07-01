n = gets.to_i
a = gets.split.map &:to_i
memo = 1
ans = [0]
(n - 1).times do |i|
  if a[i] == memo
    ans[-1] += 1
  elsif a[i] > memo
    ans << 1
    memo = a[i]
  end
end

(n - ans.length).times do
  ans << 0
end

puts ans

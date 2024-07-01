n, k = gets.split.map(&:to_i)
s = gets.chomp

a = s.split(/(?<=0)(?=1)|(?<=1)(?=0)/).map(&:size)

if s[0] == '0'
  a.unshift(0)
end
if s[-1] == '0'
  a.push(0)
end

sum = a.inject([]) do |memo, item|
  memo << ((memo.last || 0) + item)
end

ans = 0.step([0, a.size - k*2].max, 2).map do |i|
  sum[[i + k*2, a.size - 1].min] - (i == 0 ? 0 : sum[i - 1])
end.max

puts ans

n = gets.to_i

conditions = []

n.times do
  conditions << gets.to_i
end

arr = Array.new(n) { 0 }

ans = Array.new(n) { 0 }

(arr.size - 1).downto(0) do |i|
  c = conditions[i]
  
  sum = Hash[ans.each_with_index.select { |k, _| k % (i + 1) == 0 }].values.inject(:+)
  
  next if c.odd? && sum.odd?
  next if c.even? && sum.even?

  ans[i] = 1
end

res = ans.inject(:+)

if conditions[0] % 2 == res % 2
  puts res
  puts ans.join(' ') if res.nonzero?
else
  puts '-1'
end

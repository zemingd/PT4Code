n = gets.to_i
v = gets.split.map(&:to_i)

odd = Hash.new(0)
even = Hash.new(0)
v.each_with_index do |vi, i|
  odd[vi] += 1 if i.odd?
  even[vi] += 1 if i.even?
end

odd = odd.sort{|a, b| b[1] <=> a[1]}
even = even.sort{|a, b| b[1] <=> a[1]}

ans = 0
if odd[0][1] >= even[0][1]
  a, b = odd, even
else
  a, b = even, odd
end
ans += n / 2 - a[0][1]
if a[0][0] != b[0][0]
  ans += n / 2 - b[0][1]
elsif b.size == 1
  ans += n / 2
else
  ans += n / 2 - b[1][1]
end
puts ans


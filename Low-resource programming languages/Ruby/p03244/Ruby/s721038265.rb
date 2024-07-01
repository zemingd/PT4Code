n = gets.to_i
v = gets.split.map(&:to_i)

odd = Hash.new(0).tap {|x| x[0] = 0}
even = Hash.new(0).tap {|x| x[0] = 0}
v.each_with_index do |vi, i|
  odd[vi] += 1 if i.odd?
  even[vi] += 1 if i.even?
end

odd = odd.sort{|a, b| b[1] <=> a[1]}
even = even.sort{|a, b| b[1] <=> a[1]}

ans = 0
if odd[0][0] != even[0][0]
  ans = n - odd[0][1] - even[0][1]
else
  ans = n - [odd[0][1] + even[1][1], odd[1][1] + even[0][1]].min
end
puts ans


n, m, k = gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i)
ary_b = gets.split(" ").map(&:to_i)
ans = 0

# (n+m).times do
#   if ary_a[0] == nil
#     r = ary_b[0]
#     ary_b.shift
#   elsif ary_b[0] == nil
#     r = ary_a[0]
#     ary_a.shift
#   elsif ary_a[0] >= ary_b[0]
#     r = ary_b[0]
#     ary_b.shift
#   else
#     r = ary_a[0]
#     ary_a.shift
#   end

#   if k - r >= 0
#     k -= r
#   else
#     break
#   end
#   ans += 1
# end

# puts ans

ary = []
(n+m).times do
  if ary_a[0] == nil
    ary << ary_b[0]
    ary_b.shift
  elsif ary_b[0] == nil
    ary << ary_a[0]
    ary_a.shift
  elsif ary_a[0] >= ary_b[0]
    ary << ary_b[0]
    ary_b.shift
  else
    ary << ary_a[0]
    ary_a.shift
  end
end

ary.each do |x|
  if k - x >= 0
    k -= x
  else
    break
  end
  ans += 1
end

puts ans

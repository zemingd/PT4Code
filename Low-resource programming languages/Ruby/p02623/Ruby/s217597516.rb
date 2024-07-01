n, m, k = gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i)
ary_b = gets.split(" ").map(&:to_i)
i = 0

(n+m).times do
  if !ary_a[0]
    r = ary_b[0]
    ary_b.shift
  elsif !ary_b[0]
    r = ary_a[0]
    ary_a.shift
  elsif ary_a[0] >= ary_b[0]
    r = ary_b[0]
    ary_b.shift
  else
    r = ary_a[0]
    ary_a.shift
  end
  if k - r >= 0
    k -= r
  else
    break
  end
  i += 1
end

puts i

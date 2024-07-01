n = gets.to_i
v = gets.chomp.split.map(&:to_i)
odd = Hash.new(0)
even = Hash.new(0)

(n / 2).times do |i|
  even[v[2 * i]] += 1
  odd[v[2 * i + 1]] += 1
end

ep = even.to_a.sort_by! {|_, v| v }
op = odd.to_a.sort_by! {|_, v| v }

ev1 = ep[-1][1]
ov1 = op[-1][1]
ek1 = ep[-1][0]
ok1 = op[-1][0]

if ev1 + ov1 == n
  res = (ek1 == ok1)? n / 2 : "0"
elsif ev1 == n / 2
  res = n / 2
  if ek1 == ok1
    res -= op[-2][1]
  else
    res -= ov1
  end
elsif ov1 == n / 2
  res = n / 2
  if ek1 == ok1
    res -= ep[-2][1]
  else
    res -= ev1
  end
elsif ek1 != ok1
  res = n / 2 - [ev1, ov1].min
else
  res = n - [ev1 + op[-2][1], ov1 + ep[-2][1]].min
end
puts res
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

if ek1 != ok1
  puts n - ov1 - ev1
else
  if ev1 + ov1 == n
    puts n / 2
  elsif ev1 == n / 2
    puts n / 2 - op[-2][1]
  elsif ov1 == n / 2
    puts n / 2 - ep[-2][1]
  else
    puts [n - ev1 - op[-2][1], n - ov1 - ep[-2][1]].min
  end
end

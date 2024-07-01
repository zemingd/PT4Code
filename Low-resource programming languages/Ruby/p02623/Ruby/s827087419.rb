n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

max = 10**10
a.push(max)
b.push(max)
acount = 0
bcount = 0

while k > 0 do
  if a[acount] <= b[bcount]
    if k >= a[acount]
      k -= a[acount]
      acount += 1
    end
  else
    if k >= b[bcount]
      k -= b[bcount]
      bcount += 1
    end
  end
end

puts acount + bcount
n = gets.to_i
a = gets.split.map(&:to_i)

l = [a[0]]
r = [a[-1]]
(a.length-1).times do |i|
  l.push(l[i].gcd(a[i+1]))
  r.push(r[i].gcd(a[a.length - i - 2]))
end

max = 0

a.length.times do |i|
  if i == 0
    max = [r[r.length - 2 - i], max].max
    next
  end
  if i == a.length - 1
    max = [l[i-1], max].max
    next
  end 
  max = [l[i-1].gcd(r[r.length - 2 - i]), max].max
end

puts max
n = gets.to_i
a = gets.split.map(&:to_i)

gcdl = Array.new(n)
gcdl[0] = a[0]
gcdr = Array.new(n)
gcdr[n-1] = a[n-1]

for i in 1..(n-1)
  gcdl[i] = gcdl[i-1].gcd(a[i])
  gcdr[n-1-i] = gcdr[n-i].gcd(a[n-1-i])
end

max = 0
for i in 0..(n-1)
  if i == 0
    max = [max, gcdr[i+1]].max
  elsif i == n-1
    max = [max, gcdl[i-1]].max
  else
    cmp = gcdr[i+1].gcd(gcdl[i-1])
    max = [max, cmp].max
  end
end 
puts max
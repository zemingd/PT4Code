n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
b, c = q.times.map{gets.split.map(&:to_i)}.transpose

ns = Array.new(10**5 + 1, 0)
for i in 0..(n-1)
  ns[a[i]] += 1
end
sum = 0
a.each{|e| sum += e}

for i in 0..(q-1)
  bn = ns[b[i]]
  ns[b[i]] = 0
  sum -= b[i] * bn
  sum += c[i] * bn
  ns[c[i]] += bn
  
  puts sum
end
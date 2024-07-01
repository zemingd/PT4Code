N = gets.to_i
array = gets.split.map(&:to_i)
Q = gets.to_i
b_c = []
Q.times do
  b_c << gets.split.map(&:to_i)
end

sum = array.sum

a=Array.new(10**5+1,0)
array.each do |i|
  a[i] += 1
end

b_c.each do |j|
  count = a[j[0]]
  sum += (count*j[1] - count*j[0])
  a[j[1]] += a[j[0]]
  a[j[0]] = 0
  puts sum
end

n = gets.chomp.to_i
t = []
5.times do |i|
  t.push(gets.chomp.to_i)
end

mv = t.min
num = n / mv
if (n % mv) != 0
  num += 1
end

r = 5 + num - 1
puts r


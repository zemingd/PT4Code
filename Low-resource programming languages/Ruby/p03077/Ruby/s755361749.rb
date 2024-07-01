n = gets.to_i
ary = []
5.times{ary << gets.to_i}
m = ary.min

if n % m == 0
  puts n / m + 4
else
  puts n / m + 5
end

n = gets.to_i
a = 5.times.map{gets.to_i}
a.sort!
if n % a[0] == 0
  puts n / a[0] + 4
else
  puts n / a[0] + 5
end

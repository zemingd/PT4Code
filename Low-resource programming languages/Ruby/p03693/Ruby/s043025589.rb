a = gets.split
ans = a[0].to_i*100 + a[1].to_i*10 + a[2].to_i

if ans % 4 == 0
  puts "YES"
else
  puts "NO"
end

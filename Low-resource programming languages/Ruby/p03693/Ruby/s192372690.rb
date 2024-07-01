a = gets.split (' ')
b = (a[0] + a[1] + a[2]).to_i
if b % 4 == 0
	puts "YES"
else
  puts "NO"
end
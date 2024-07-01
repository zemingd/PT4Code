arr = gets.split(' ');
x = arr[0].to_i
a = arr[1].to_i
b = arr[2].to_i

deadline = b - a

if deadline <= 0
  puts "delicious"
elsif deadline <= x
  puts "safe"
else
  puts "dangerous"
end

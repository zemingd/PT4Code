arr = gets.chomp.split(" ")
a = arr[0].to_i
b = arr[1].to_i
x = arr[2].to_i


if (a<=x && x<=(a+b))
  puts 'YES'
else
  puts 'NO'
end

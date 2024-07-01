a = gets.split(' ')
a_zahyou = a[0].to_i
a_kyori = a[1].to_i

b = gets.split(' ')
b_zahyou = b[0].to_i
b_kyori = b[1].to_i

time = gets.to_i

a_plus = a_zahyou + a_kyori * time
a_minus = a_zahyou - a_kyori * time

b_plus = b_zahyou + b_kyori * time
b_minus = b_zahyou - b_kyori * time

if a_plus >= b_plus && a_minus <= b_minus
  puts 'YES'
else 
  puts 'NO'
end
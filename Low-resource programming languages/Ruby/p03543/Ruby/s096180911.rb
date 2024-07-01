integer = gets.to_i

a = integer / 1000
b = integer / 100 - a * 10
c = integer / 10 - ( a * 100 + b * 10 )
d = integer - ( a * 1000 + b * 100 + c * 10 )

if (a == b && b == c) || ( b == c && c = d ) || ( c == d && d == a )
  puts 'Yes'
else
  puts 'No'
end

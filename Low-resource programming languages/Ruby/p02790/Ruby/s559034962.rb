a,b = gets.split(' ').map(&:to_i)
str_a = a.to_s * b;
str_b = b.to_s * a;

if str_a < str_b
  puts str_a
else
  puts str_b
end 
n = gets.to_i
array = []
5.times do
  array << gets.to_i
end

x = (n / array.min.to_f).ceil(0)

if n < array.min
  puts 5
else
  puts x + 4
end

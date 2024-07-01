strings = gets.chomp
num = strings.to_i

j = 0
strings.chars.each do |i|
  j += i.to_i
end
if num % j == 0
  puts 'Yes'
else
  puts 'No'
end

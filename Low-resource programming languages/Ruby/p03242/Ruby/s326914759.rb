str_arr = gets.chomp!
str_arr2 = str_arr
count = 0

str_arr2.chars do |c|
  if c == '1' then str_arr[count] = '9'
  elsif c == '9' then str_arr[count] = '1' end
  count += 1
end

puts str_arr
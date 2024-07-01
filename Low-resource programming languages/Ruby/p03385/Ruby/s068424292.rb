s = gets.strip
str_arr = []

s.chars do |c|
  str_arr << c
end

if str_arr.sort.join == 'abc'
  puts 'Yes'
else
  puts 'No'
end

total = gets.chomp!.to_i
num_arr = gets.chomp!.split(' ')

count = 1

odd_arr = []
even_arr = []

num_arr.each do |num|
  if ((count % 2) == 1) then odd_arr << num
  elsif((count % 2) == 0) then even_arr << num
  end
  count = count + 1
end

odd_flag_num = 0
odd_max_change_num = 0
odd_arr.each do |n|
  if ((odd_arr.length - odd_arr.count(n)) > odd_max_change_num) then
    odd_flag_num = n
    odd_max_change_num = odd_arr.length - odd_arr.count(n)
  end
end


even_flag_num = 0
even_max_change_num = 0
even_arr.each do |n|
  if ((even_arr.length - even_arr.count(n)) > even_max_change_num) then
    even_flag_num = n
    even_max_change_num = even_arr.length - even_arr.count(n)
  end
end

if odd_arr[0] != even_arr[0] then
  puts (odd_max_change_num + even_max_change_num)
else
  if odd_arr.length != even_arr.length then puts odd_arr.length
  else
    puts even_arr.length
  end
end
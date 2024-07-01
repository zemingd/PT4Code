h, n= gets.split.map(&:to_i)  # スペースで区切られた複数の整数
array = gets.split.map(&:to_i)

if array.inject(&:+) >= h
  puts 'Yes'
else
  puts 'No'
end
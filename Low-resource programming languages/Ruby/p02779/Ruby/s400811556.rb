n = gets.to_i
array = gets.split.map(&:to_i)
dist_array = array.uniq

if array.size == dist_array.size
  puts 'YES'
else
  puts 'NO'
end
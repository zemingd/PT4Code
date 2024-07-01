k = gets.to_i
array = gets.split.map(&:to_i)

if k == 1 || k <= array[1] - array[0]
  puts 'OK'
else
  puts 'NG'
end

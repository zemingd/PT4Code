size = gets.to_i
array = gets.split.map(&:to_i)

ng = 0

array.each_with_index do |p, i|
  ng += 1 if array[i] != i + 1
end

puts ng == 0 || ng == 2 ? 'YES' : 'NO'

def all_black?(arr)
  arr.each do |a|
    return false if a.include?('.')
  end
  return true
end

h, w = gets.chomp.split(' ').map(&:to_i)
arr = []
h.times do |i|
  arr[i] = gets.chomp.split('')
end

if all_black?(arr)
  puts 0
  exit
end

mark = '#'
count = 0
while true do
  break if all_black?(arr)
  count += 1

  arr.each_with_index do |a, i|
    a.each_with_index do |color, j|
      next if color != mark

      arr[i-1][j] = count if i > 0 && arr[i-1][j] == '.'
      arr[i][j-1] = count if j > 0 && arr[i][j-1] == '.'

      arr[i][j+1] = count if j < a.size - 1 && arr[i][j+1] == '.'
      arr[i+1][j] = count if i < arr.size - 1 && arr[i+1][j] == '.'
    end
  end
  mark = count
end

puts count

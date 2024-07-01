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

count = 0
while true do
  break if all_black?(arr)
  count += 1

  arr.each_with_index do |a, i|
    a.each_with_index do |color, j|
      next if color != '#'

      arr[i-1][j] = '-' if i > 0 && arr[i-1][j] == '.'
      arr[i][j-1] = '-' if j > 0 && arr[i][j-1] == '.'

      arr[i][j+1] = '-' if j < a.size - 1 && arr[i][j+1] == '.'
      arr[i+1][j] = '-' if i < arr.size - 1 && arr[i+1][j] == '.'
    end
  end

  arr.each_with_index do |a, i|
    a.each_with_index do |color, j|
      arr[i][j] = '#' if arr[i][j] == '-'
    end
  end
end

puts count

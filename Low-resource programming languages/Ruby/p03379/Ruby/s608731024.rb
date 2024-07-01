gets
arr = gets.split(' ').map(&:to_i)

arr.size.times do |i|
  p [*arr[0...i], *arr[(i + 1)..-1]].sort[arr.size / 2 - 1]
end
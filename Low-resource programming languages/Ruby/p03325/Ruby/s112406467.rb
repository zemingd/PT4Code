n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
c = 0
(0...n).each do |i|
  v = arr[i]
  while v % 2 == 0
    c += 1
    v /= 2
  end
end
puts c
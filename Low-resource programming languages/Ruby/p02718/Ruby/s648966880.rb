n, m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
sum = arr.inject(:+)
ok = true
(0...m).each do |i|
  ok = ok && arr[i] > sum / (4 * m)
end
puts ok ? 'Yes' : 'No'
n, k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
(0...k).each do |i|
  arr[i] = 0 if i < n
end
puts arr.inject(:+)
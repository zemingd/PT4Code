n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
total = 0
arr.each { |i| total += i }
result = total
(1...n).each do |i|
  tmp = 0
  (i...n).each do |j|
    tmp += arr[j]
  end
  result = [result, (total - tmp - tmp).abs].min
end
puts result
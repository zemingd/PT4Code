n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
total = 0
(0...n).each do |i|
  ((i + 1)...n).each do |j|
    total += arr[i] * arr[j]
  end
end
puts total
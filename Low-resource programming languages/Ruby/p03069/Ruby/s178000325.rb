n = gets.to_i
arr = gets.chomp.split('')
blacks = Array.new(n + 1, 0)
whites = Array.new(n + 1, 0)
(0...n).each do |i|
  blacks[i + 1] = blacks[i] + (arr[i] == '#' ? 1 : 0)
  whites[i + 1] = whites[i] + (arr[i] == '.' ? 1 : 0)
end
min = n
(0..n).each do |i|
  min = [whites[n] - whites[i] + blacks[i], min].min
end
puts min
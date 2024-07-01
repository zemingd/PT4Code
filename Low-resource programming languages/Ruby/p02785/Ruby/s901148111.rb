N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).sort.reverse

if K >= H.length
  puts 0
else
  puts H[K..-1].reduce(:+)
end

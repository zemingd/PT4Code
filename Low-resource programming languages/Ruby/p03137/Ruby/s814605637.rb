N, M = gets.chomp.split.map(&:to_i)
coordinate = gets.chomp.split.map(&:to_i).sort
diff = Array.new
if N >= M
  puts 0
else
  (M - 1).times do |i|
    diff.push(coordinate[i + 1] - coordinate[i])
  end
  sorted = diff.sort.reverse
  puts (coordinate[-1] - coordinate[0]) - sorted[0..N-2].inject(:+)
end

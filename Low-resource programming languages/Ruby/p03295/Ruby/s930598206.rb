_n, m = gets.split.map(&:to_i)
a, b = Array.new(m) { gets.split.map(&:to_i) }.transpose
cut = count = 0

a.zip(b).sort_by { |_x, y| y }.each do |x, y|
  if cut < x
    cut = y - 1
    count += 1
  end
end

puts count

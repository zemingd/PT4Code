n, d = gets.chomp.split.map(&:to_i)
matrix = []
n.times do
  matrix << gets.chomp.split.map(&:to_i)
end

ret = 0
n.times do |i|
  (i + 1..n - 1).each do |j|
    sum = 0
    d.times do |k|
      sum += (matrix[i][k] - matrix[j][k])**2
    end
    sqrt = Math.sqrt(sum).to_i
    ret += 1 if [(sqrt - 1)**2, sqrt**2, (sqrt + 1)**2].include?(sum)
  end
end

puts ret
N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
solver = 0
N.times do |i|
  a = gets.split.map(&:to_i)
  if ( M.times.map { |j| a[j] * B[j] }.inject(:+) + C ) > 0
    solver += 1
  end
end
puts solver
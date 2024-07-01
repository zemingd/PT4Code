n, d = gets.chomp.split(' ').map(&:to_i)
input = Array.new(n) { gets.chomp.split(' ').map(&:to_i) }
ans = 0
input.combination(2) do |a, b|
  y_square = 0
  d.times do |dimention|
    y_square += (a[dimention] - b[dimention]) ** 2
  end
  ans += 1 if (1..y_square).any? { |k| k ** 2 == y_square }
end
puts ans

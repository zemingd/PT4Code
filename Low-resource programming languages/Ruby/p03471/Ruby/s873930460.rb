N, Y = gets.chomp.split(' ').map(&:to_i)

ans = (0...(N+2)).to_a.combination(2).map do |i, j|
  [i, j - i, N - j]
end.find do |x, y, z|
  10_000 * x + 5_000 * y + 1_000 * z == Y
end

puts ans.join(' ')

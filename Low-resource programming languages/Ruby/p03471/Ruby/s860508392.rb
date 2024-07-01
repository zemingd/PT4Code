N, Y = gets.chomp.split(' ').map(&:to_i)

ans = (0...(N+2)).to_a.combination(2).map do |i, j|
  [i, j - i - 1, N - j + 1]
end.find do |x, y, z|
  10_000 * x + 5_000 * y + 1_000 * z == Y
end

if ans
  puts ans.join(' ')
else
  puts '-1 -1 -1'
end

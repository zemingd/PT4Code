N, M, C = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0

N.times do
  a = gets.split.map(&:to_i)
  sum = C
  [a, b].transpose.each do |x, y|
    sum += x*y
  end
  ans += 1 if sum > 0
end

puts ans
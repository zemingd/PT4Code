N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

x = X
ans = 0

A.each_with_index do |a, idx|
  break if a > x

  x -= a
  ans += 1

  if idx == N - 1 && x > 0
    ans -= 1
  end
end

puts ans

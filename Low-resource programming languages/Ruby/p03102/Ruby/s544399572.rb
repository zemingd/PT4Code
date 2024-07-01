n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0
n.times do
  as = gets.split.map(&:to_i)
  sum = [as, bs].transpose.inject(0) do |r, (a, b)|
    r + a * b
  end

  ans += 1 if sum + c > 0
end

puts ans

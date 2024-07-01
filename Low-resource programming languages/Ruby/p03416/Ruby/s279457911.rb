a, b = gets.split.map(&:to_i)

ans = a.upto(b).count do |n|
  xa = n / 1_000 % 10
  xb = n % 10

  ya = n / 10 % 10
  yb = n / 10_000 % 10

  xa == xb && ya == yb
end

puts ans

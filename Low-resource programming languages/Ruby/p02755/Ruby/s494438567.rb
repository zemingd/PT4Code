a, b = gets.chomp.split(' ').map(&:to_i)

low_a = (a * 100.0 / 8).ceil
high_a = (a + 1) * 100 / 8
price_a = [*low_a...high_a]

low_b = (b * 100 / 10).ceil
high_b = (b + 1) * 100 / 10
price_b = [*low_b...high_b]

if (ans = (price_a & price_b)).empty?
  print(-1)
else
  print(ans.shift)
end
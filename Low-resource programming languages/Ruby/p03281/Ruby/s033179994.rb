require 'prime'
n = gets.to_i
pnums = Prime.each(Math::sqrt(n).to_i).to_a
_ = pnums.shift
res = 0
if pnums.size > 2
  pnums.combination(3) do |i, j, k|
    res += 1 if i * j * k <= n
  end
end
if pnums.size > 1
  pnums.combination(2) do |i, j|
    res += 1 if i ** 3 * j <= n
    res += 1 if j ** 3 * i <= n
  end
end

puts res
n = gets.to_i
an = gets.strip.split.map(&:to_i)

mod = 10 ** 9 + 7
ans = 0
(0..60).each do |d|
  count_0 = 0
  count_1 = 0
  an.each do |a|
    if ((a >> d) & 1) == 1
      count_1 += 1
    else
      count_0 += 1
    end
  end

  keta = 1
  d.times do
    keta *= 2
    keta %= mod
  end

  count = (count_0 * count_1) * keta % mod
  ans += count
  ans %= mod
end

puts ans

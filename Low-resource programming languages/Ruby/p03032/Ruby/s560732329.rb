n,k = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

minus_i_a = []
sum_i_a = 0
max = 0
x = (k > n ? n : k) + 1
x.times do |i_a|
  sum_i_b = 0
  minus_i_b = []
  x.times do |i_b|
    break if i_a + i_b > k
    sum = sum_i_a + sum_i_b - (minus_i_a + minus_i_b).sort[0...(k - i_a - i_b)].inject(:+).to_i
    minus_i_b << v[n - 1 - i_b] if (v[n - 1 - i_b] < 0)
    sum_i_b += v[n - 1 - i_b]
    max = sum > max ? sum : max
    break if i_b + i_a > n
  end
  minus_i_a << v[i_a] if v[i_a] < 0
  sum_i_a += v[i_a]
end

p max
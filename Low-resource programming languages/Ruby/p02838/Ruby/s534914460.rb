N = gets.to_i
as = gets.split.map(&:to_i)
d_c = Hash.new { 0 }
MOD = 10 ** 9 + 7
as.each do |a|
  (0..60).each do |i|
    if a[i] == 1
      d_c[i] += 1
    end
  end
end
ans = 0
d_c.each do |d, c|
  zero_c = N - c
  n = 2 ** d
  ans = (ans + zero_c * c * n) % MOD
end
puts ans

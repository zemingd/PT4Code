N = gets.to_i
as = gets.split.map(&:to_i)
d_c = Hash.new { 0 }
as.each do |a|
  bits = a.to_s(2).chars.reverse
  bits.each.with_index do |b, i|
    if b == '1'
      d_c[i] += 1
    end
  end
end
MOD = 10 ** 9 + 7
ans = 0
d_c.each do |d, c|
  zero_c = N - c
  n = 2 ** d
  ans = (ans + zero_c * c * n) % MOD
end
puts ans

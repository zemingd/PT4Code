s = gets.chomp
n = s.size

if n == 1
  p 0
else
  d, m = n.divmod(2)
  s0 = '01' * d + '0' * m
  s1 = '10' * d + '1' * m

  def diff_count(a, b)
    a.size.times.count { |i| a[i] != b[i] }
  end

  p [diff_count(s, s0), diff_count(s, s1)].min
end

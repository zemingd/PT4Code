def count_division(f, t, d)
  return 1 + ((t - f - d + (1+(f-1)%d)) / d)
end

a, b, c, d = gets.chomp.split.map(&:to_i)

all_num = b - a + 1
c_num = count_division(a, b, c)
d_num = count_division(a, b, d)
cd_num = count_division(a, b, c.gcd(d))

puts(all_num - c_num - d_num + cd_num)
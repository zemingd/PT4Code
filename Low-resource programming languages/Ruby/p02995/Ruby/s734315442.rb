a,b,c,d = gets.chomp.split(" ").map(&:to_i)

c_count = b / c - a / c
c_count += 1 if a % c == 0

d_count = b / d - a / d
d_count += 1 if a % d == 0

cd = c.lcm(d)
cd_count = b / cd - a / cd
cd_count += 1 if a % cd == 0

puts b - a + 1 - c_count - d_count + cd_count

a,b,c,d = gets.chomp.split.map(&:to_i)

c_b = b/c
d_b = b/d
cd_b = b/(c*d/(c.gcd(d)))
c_a = (a-1)/c
d_a = (a-1)/d
cd_a = (a-1)/(c*d/(c.gcd(d)))


puts b - (c_b + d_b - cd_b)-(a-1 - (c_a + d_a - cd_a))
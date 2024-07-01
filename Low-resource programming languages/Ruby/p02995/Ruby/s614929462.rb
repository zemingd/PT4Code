a, b, c, d = gets.split.map(&:to_i)

gcd = c.gcd(d)
lcm = c.lcm(d)

n_c = lcm / c
n_d = lcm / d
n = n_c + n_d - 1

q_a = a / lcm
q_b = b / lcm
r_a = a % lcm
r_b = b % lcm

a_to_lcm = n - ((r_a-1)/c + (r_a-1)/d)
lcm_to_b = r_b/c + r_b/d

division = a_to_lcm + (q_b - q_a - 1)*n + lcm_to_b

puts (b - a + 1) - division

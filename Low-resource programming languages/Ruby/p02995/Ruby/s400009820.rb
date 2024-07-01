data = $stdin.gets
a,b,c,d = data.split(" ").map{|x| x.to_i }
ab = b - a + 1
n_c = b/c - (a+c-1)/c + 1
n_d = b/d - (a+d-1)/d + 1
lcm_cd = c.lcm(d)
n_cd = b/lcm_cd - (a+lcm_cd-1)/lcm_cd + 1
result = (ab - n_c - n_d + n_cd)
puts result
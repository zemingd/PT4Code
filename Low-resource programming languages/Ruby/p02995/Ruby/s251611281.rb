a,b,c,d = gets.split(" ").map{|item| item.to_i}
cdlcm = c.lcm(d)

c_div_count = b/c - (a-1)/c
d_div_count = b/d - (a-1)/d
cd_div_count = b/cdlcm - (a-1)/cdlcm

p b-a+1-c_div_count-d_div_count+cd_div_count
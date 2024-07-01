a,b,c,d=gets.split.map(&:to_i)
e=b-a
c_divide=e/c
d_divide=e/d
c_divide+=1 if a%c==0 && b%c==0
d_divide+=1 if a%d==0 && b%d==0
cd_lcm=[c,d].inject(:lcm)
cd_divide=e/cd_lcm
cd_divide+=1 if a%cd_lcm==0 && b%cd_lcm==0
puts e+cd_divide-c_divide-d_divide

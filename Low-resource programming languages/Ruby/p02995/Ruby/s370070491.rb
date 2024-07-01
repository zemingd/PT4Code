input = gets.chomp
a,b,c,d = input.split.collect{ |item| item.to_i}

result = 0
abmax = b-a+1
cmin = a%c == 0 ? a/c : a/c + 1
cmax = b/c
pop_for_c = cmax - cmin + 1
pop_for_c = 0 if cmin > cmax
dmin = a%d == 0 ? a/d : a/d + 1
dmax = b/d
pop_for_d = dmax - dmin + 1
pop_for_d = 0 if dmin > dmax

cd = c.lcm(d)
cdmin = a%(cd) == 0 ? a/(cd) : a/(cd)+1
cdmax = b/(cd)
plus_for_cd = cdmax - cdmin + 1
plus_for_cd = 0 if cdmin > cdmax

result = abmax - pop_for_c - pop_for_d + plus_for_cd
puts result
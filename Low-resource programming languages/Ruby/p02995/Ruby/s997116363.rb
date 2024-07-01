a,b,c,d=gets.split.map &:to_i
a_c = a/c
a_d = a/d
a_cd = a/(c.lcm(d))
b_c = b/c
b_d = b/d
b_cd = b/(c.lcm(d))

sum = (b_c + b_d - b_cd) - (a_c + a_d - a_cd)
sum += 1 if a % c == 0
sum += 1 if a % d == 0
sums = b-a+1
puts sums-sum
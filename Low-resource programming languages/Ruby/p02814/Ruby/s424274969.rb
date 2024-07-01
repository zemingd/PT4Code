n, m=gets.chomp.split(" ").map(&:to_i)
a=gets.chomp.split(" ").map(&:to_i)

a = a.uniq
len = a.length

lcm = a[0]/2
for i in 1..len-1
  lcm = lcm.lcm(a[i]/2)
end

p (m/lcm) - m/(lcm*2)
N,M = gets.split.map(&:to_i)
as = gets.split

len = as.length
lcm = 1
i = 0
while i < len
  lcm = lcm.lcm(as[i].to_i)
  i += 1
end

p (M+lcm/2)/lcm


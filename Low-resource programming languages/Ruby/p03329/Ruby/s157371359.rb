n=gets.to_i

ns = [1]

x = 6
while x <= 100_000
  ns << x
  x *= 6
end

x = 9
while x <= 100_000
  ns << x
  x *= 9
end

ns = ns.sort.reverse

ret = 0
ns.each do |m|
  while n >= m
    n -= m
    ret += 1
  end
end

p ret
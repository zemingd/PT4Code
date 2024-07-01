require 'prime'

a,b = gets.chomp.split(" ").map(&:to_i)
c = a.gcd(b)

pr = []
prime = Prime.each(Math.sqrt(c).to_i+1).to_a
prime.each do |e|
  while c % e == 0
    pr << e
    c = c / e
  end
end
if c > 1
  pr << c
end

p prime
p (pr.uniq.count+1)
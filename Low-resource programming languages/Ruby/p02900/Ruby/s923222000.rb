require 'prime'
a,b=gets.split(" ").map(&:to_i)
gcd = a.gcd(b)
a_p=Prime.prime_division(a).to_a
b_p=Prime.prime_division(b).to_a
n=0
while a_p!=[] and b_p!=[]
  while a_p[0][0]>b_p[0][0]
    b_p.shift
  end
  if a_p[0][0]==b_p[0][0]
    n+=1
    b_p.shift
  end
  a_p.shift
end
puts n+1
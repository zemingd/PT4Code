require 'prime'
a,b=gets.split(" ").map(&:to_i)
a_p=Prime.prime_division(a)
b_p=Prime.prime_division(b)
n=0
while a_p!=[] and b_p!=[]
  if a_p[0][0]==b_p[0][0]
    n+=1
    b_p.shift
  elsif a_p[0][0]>b_p[0][0]
    b_p.shift
  end
  a_p.shift
end
puts n+1
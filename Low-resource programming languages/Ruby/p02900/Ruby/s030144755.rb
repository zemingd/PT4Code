require 'prime'
a,b=gets.split(" ").map(&:to_i)
primes=Prime.each(a.gcd(b)).to_a
n=0
copr=[]
primes.each do |p|
  if a%p==0 and b%p==0
    n+=1
    copr << p
  end
end
puts ([1]+copr).join(" ")
puts n+1
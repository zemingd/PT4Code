require 'prime'

a,b = gets.split.map(&:to_i)
gcd = a.gcd(b)

ans = 1
div = gcd.prime_division
div.map{|(x,y)|
  ans+=1 if x.prime?
}

p ans

require 'prime'
a= gets.to_i
ans = 0

def number_divisors(n)
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

for num in 3..a do
  if num.odd?
     if number_divisors(num) == 8
       ans += 1
     end
  end
end
p ans
require 'prime'

n = gets.chomp.to_i
ans = 1
n.times do
  primes = ans.prime_division
  now = gets.chomp.to_i
  primes.each do |a|
    a[1].times do
      if(now % a[0] == 0)
        now /= a[0]
      else
        break 
      end
    end
  end
  ans *= now
end
p ans
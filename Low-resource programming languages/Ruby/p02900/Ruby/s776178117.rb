require "prime"
a,b=gets.chomp.split(" ").map(&:to_i)
if a==1 or b==1
  puts 1
else
a_primes=prime.prime_division(a)
b_primes=prime.prime_division(b)
ans=0
a_primes.flatten!.uniq!
b_primes.flatten!.uniq!
a_primes.each do|c_a|
  b_primes.each do|c_b|
    if c_a==c_b
      ans+=1
      break
    end
  end
end
puts ans
end

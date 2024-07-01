require 'prime'

line = gets.split(' ').map(&:to_i)

A = line[0]
B = line[1]

primes = []
Prime.each(10 ** 6 + 1).each{|prime|
  primes.push(prime)
}

comdiv = [1]
primes.each do |i|
  if A % i == 0 and B % i == 0 then
    comdiv.push(i)
  end
end
if A % B == 0 and Prime.prime?(B) then
  comdiv.push(B)
elsif B % A == 0 and Prime.prime?(A) then
  comdiv.push(A)
end
  
print comdiv.length
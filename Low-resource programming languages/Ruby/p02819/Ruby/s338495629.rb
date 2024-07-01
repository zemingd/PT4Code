require "prime"

X = gets.chomp.to_i

if Prime.prime?(X) then
  puts X
  exit
end

list = (2..X).to_a

primes = []

while list.first < Math.sqrt(X) do
  prime = list.first
  list = list.select{|n| n % prime != 0}
  primes << prime
end

last = list.last + 1
while true do
  if Prime.prime?(last) then
    puts last
    break
  end
  last += 1
end


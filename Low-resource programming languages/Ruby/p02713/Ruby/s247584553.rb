k = gets.to_i
sum = 0
sigma = (1..k).to_a
sigma.repeated_permutation(3).each do |combination|
  sum += combination[0].gcd(combination[1]).gcd(combination[2])
end

puts sum

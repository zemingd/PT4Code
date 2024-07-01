require 'prime'

N = gets.to_i
A = gets.split.map(&:to_i)

counter = Hash.new(0)

A.each do |a|
  a.prime_division.each do |x, _|
    counter[x] += 1
  end
end

all_gcd = A.inject(&:gcd)
mv = counter.values.max

if mv == 1
  puts 'pairwise coprime'
else
  if all_gcd == 1
    puts 'setwise coprime'
  else
    puts 'not coprime'
  end
end

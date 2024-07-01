require 'prime'

N = gets.to_i

a = 1
b = 1
N.prime_division.reverse.each do |prime|
  n = prime[1]
  x = prime[0]
  n.times do
    if a > b
      b *= x
    else
      a *= x
    end
  end
end

puts [a, b].max.to_s.size
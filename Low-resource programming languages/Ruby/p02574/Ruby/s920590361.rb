END { load __FILE__ unless $stdin.eof? }

require 'prime'

n = gets.to_i
a = gets.split.map!(&:to_i)

prod = 1
result = a.each do |ai|
  break if ai.gcd(prod) != 1
  prod *= Prime.prime_division(ai).inject(1) { |x,(s,t)| x * s }
end

if result
  puts "pairwise coprime"
elsif a.inject(0, :gcd) == 1
  puts "setwise coprime"
else
  puts "not coprime"
end

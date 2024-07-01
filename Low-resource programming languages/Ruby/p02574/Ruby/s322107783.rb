END { load __FILE__ unless $stdin.eof? }

require 'prime'

n = gets.to_i
a = gets.split.map!(&:to_i)

table = Array.new(10**6 + 1)
result = a.each do |ai|
  e = Prime.prime_division(ai).map!(&:first)
  break if table.values_at(*e).any?
  e.each { |ei| table[ei] = true }
end

if result
  puts "pairwise coprime"
elsif a.inject(0, :gcd) == 1
  puts "setwise coprime"
else
  puts "not coprime"
end

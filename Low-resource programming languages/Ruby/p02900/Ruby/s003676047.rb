a,b=gets.split.map &:to_i
require 'prime'
aps=a.prime_division
a_prime=Array.new
a_prime << 1
aps.each do |ap|
    a_prime << ap[0]
end
bps=b.prime_division
b_prime=Array.new
b_prime << 1
bps.each do |bp|
    b_prime << bp[0]
end

com=Array.new
a_prime.each do |i|
    if b_prime.include?(i)
        com << i
    end
end

puts com.size
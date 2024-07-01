require 'prime'

n = gets.to_i
ans = 0
(n+1).times do |i|
    next if i.even?
    ans += 1 if i.prime_division.map{|e| e[1] + 1}.inject(:*) == 8
end

puts ans
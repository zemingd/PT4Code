require 'prime'

n = gets.chomp.to_i

c = 0
(2..n).each do |i| 
  if i % 2 == 0 then
    next
  end
  
  if Prime.prime_division(i).map{|p, x| x + 1}.reduce(:*) == 8 then
    c += 1
  end
end
  
puts c.to_s
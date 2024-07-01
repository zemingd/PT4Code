require 'prime'

n = gets.to_i
while !n.prime?
  n+=1
end
p n
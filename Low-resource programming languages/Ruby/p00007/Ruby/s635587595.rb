n = gets.to_i
debt = 100000
rate = 0.05

n.times do
 k = debt * rate
 if k % 1000 == 0
  debt = debt + k
 else
 debt = debt + k - (k % 1000) + 1000
 end
end

puts debt.to_i

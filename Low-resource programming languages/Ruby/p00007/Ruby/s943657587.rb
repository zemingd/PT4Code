n = gets.to_i
debt = 100
for i in 1..n do
  debt += debt * 0.05
  debt = debt.ceil
end

puts debt*1000
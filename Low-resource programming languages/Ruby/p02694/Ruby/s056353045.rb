x = gets.to_i
deposit = 100
year = 0
(x-100).times do
  deposit *= 1.01
  year += 1
end
p year
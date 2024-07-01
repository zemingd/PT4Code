x = gets.to_i
deposit = 100
year = 0
(x-100).times do
  deposit += (deposit * 0.01).truncate
  year += 1
end
print year
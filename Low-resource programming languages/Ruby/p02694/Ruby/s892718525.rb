x = gets.to_i
year = 0
deposit = 100
while deposit < x
  deposit = (deposit+deposit/100).ceil
  year += 1
end
p year
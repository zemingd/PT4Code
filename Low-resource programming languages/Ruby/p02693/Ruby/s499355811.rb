x = gets.to_i
money = 100
year = 0

while money < x do
  year += 1
  money = (money * 1.01).floor
end
puts year 
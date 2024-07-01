people = []
all = gets.chomp.to_i
people.push(gets.chomp.to_i)
people.push(gets.chomp.to_i)
people.push(gets.chomp.to_i)
people.push(gets.chomp.to_i)
people.push(gets.chomp.to_i)

x = people.index(people.min)
x_value = people.min

if all % x_value == 0
  y = all / x_value
else
  y = all / x_value + 1
end

z = 4 - people.index(people.min)

puts x + y + z
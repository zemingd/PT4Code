n = gets.to_i
mts = gets.chomp.split(" ")
higher = 0
sum = 0

for i in mts do
  if higher <= i.to_i
    higher = i.to_i
    sum += 1
  end
end
puts sum

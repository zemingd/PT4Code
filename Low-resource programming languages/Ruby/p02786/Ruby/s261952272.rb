H = gets.to_i

process = [H]
current_HP = H
while current_HP != 1 do
  next_HP = current_HP / 2
  process.push(next_HP)
  current_HP = next_HP
end

depth = process.length

print (2 ** depth) - 1
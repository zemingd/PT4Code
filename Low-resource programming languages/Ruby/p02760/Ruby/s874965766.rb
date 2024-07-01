bingo = []
bingo[0] = gets.chomp.split(' ').map(&:to_i)
bingo[1] = gets.chomp.split(' ').map(&:to_i)
bingo[2] = gets.chomp.split(' ').map(&:to_i)
n = gets.chomp.to_i

numbers = []
for i in 1..n do
  numbers.push(gets.chomp.to_i)
end

result = "No"
for row in bingo do
  if (row - numbers).empty? then
    result = "Yes"
  end
end

for col in 0..2 do
  column = []
  for row in 0..2 do
    column.push(bingo[row][col])
  end
  if (column - numbers).empty? then
    result = "Yes"
  end
end
  
slash = [bingo[0][0], bingo[1][1], bingo[2][2]]
if (slash - numbers).empty? then
    result = "Yes"
end

rslash = [bingo[2][0], bingo[1][1], bingo[0][2]]
if (rslash - numbers).empty? then
    result = "Yes"
end

print result
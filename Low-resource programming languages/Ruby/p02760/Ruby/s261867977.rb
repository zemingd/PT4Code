bingo = []
bingo[0] = gets.split(' ').map(&:to_i)
bingo[1] = gets.split(' ').map(&:to_i)
bingo[2] = gets.split(' ').map(&:to_i)
n = gets.chomp.to_i

numbers = []
for i in 1..n do
  numbers.append(gets.to_i)
end

result = ""
for row in bingo then
  if (row - numbers).empty? then
    result = "Yes"
  end
end

for col in 0..2 do
  column = []
  for row in 0..2 do
    column.append(bingo[row][col])
    if (column - numbers).empty? then
      result = "Yes"
    end
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

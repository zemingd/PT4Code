bingo = []
i = 0
while i < 3
  arr = gets.chomp.split(' ').map(&:to_i).each do |x|
    x = [x,0]
    bingo << x
  end
  i += 1
end
p bingo
n = gets.chomp.to_i
i = 0

bingo_swicth = false

while i < n
  a = gets.chomp.to_i
  if bingo.index([a,0])
    # p "HI",bingo.index([a,0])
    bingo[bingo.index([a,0])][1] = 1
  end
  i += 1
  if (bingo[0][1] == 1 && bingo[1][1] == 1 && bingo[2][1] == 1) || 
      (bingo[0][1] == 1 && bingo[3][1] == 1 && bingo[6][1] == 1) ||
      (bingo[0][1] == 1 && bingo[4][1] == 1 && bingo[8][1] == 1) ||
      (bingo[0][1] == 1 && bingo[1][1] == 1 && bingo[2][1] == 1) ||
      (bingo[1][1] == 1 && bingo[4][1] == 1 && bingo[7][1] == 1) ||
      (bingo[2][1] == 1 && bingo[4][1] == 1 && bingo[6][1] == 1) ||
      (bingo[3][1] == 1 && bingo[4][1] == 1 && bingo[5][1] == 1) ||
      (bingo[6][1] == 1 && bingo[7][1] == 1 && bingo[8][1] == 1)
    bingo_swicth = true
  end
end
# p bingo
if bingo_swicth
  puts "Yes"
else
  puts "No"
end
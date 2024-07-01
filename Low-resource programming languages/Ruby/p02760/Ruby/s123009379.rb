a = []
3.times do |i|
  a[i] = gets.split.map(&:to_i)
end

bingo = [[0] * 3] * 3

n = gets.to_i
n.times do
  b = gets.to_i
  3.times {|i| 3.times {|j| bingo[i][j] = 1 if a[i][j] == b}}
end

if bingo[0][0] * bingo[0][1] * bingo[0][2] == 1 ||
   bingo[1][0] * bingo[1][1] * bingo[1][2] == 1 ||
   bingo[2][0] * bingo[2][1] * bingo[2][2] == 1 ||
   bingo[0][0] * bingo[1][0] * bingo[2][0] == 1 ||
   bingo[0][1] * bingo[1][1] * bingo[2][2] == 1 ||
   bingo[0][2] * bingo[1][2] * bingo[2][2] == 1 ||
   bingo[0][0] * bingo[1][1] * bingo[2][2] == 1 ||
   bingo[0][2] * bingo[1][1] * bingo[2][0] == 1
  puts 'Yes'
else
  puts 'No'
end
a = []
3.times do
  a << gets.chomp.split(" ").map{|i|i = i.to_i}
end
n = gets.chomp.to_i
b = []
n.times do
  b << gets.chomp.to_i
end
bingo = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
count = 0 
b.each do |bElm|
  3.times do|i|
    3.times do|j|
      #puts "now count = #{count}"
      count += 1
      #pp bingo
      if a[i][j] == bElm then
        #puts "=================="
        #pp bingo
        #puts "a[i][j] == #{a[i][j]}"
        #puts "bElm == #{bElm}"
        #puts "=================="
        bingo[i][j] = 1
      end
    end
  end
end
#pp bingo
# 横を調べる
if ((bingo[0][0] == 1 && bingo[0][1] == 1 && bingo[0][2] == 1) || (bingo[1][0] == 1 && bingo[1][1] == 1 && bingo[1][2] == 1) || (bingo[2][0] == 1 && bingo[2][1] == 1 && bingo[2][2] == 1)) then
  puts "Yes"
# 縦を調べる
elsif ((bingo[0][0] == 1 && bingo[1][0] == 1 && bingo[2][0] == 1) || (bingo[0][1] == 1 && bingo[1][1] == 1 && bingo[2][1] == 1) || (bingo[0][2] == 1 && bingo[1][2] == 1 && bingo[2][2] == 1)) then
  puts "Yes"
# 斜めを調べる
elsif ((bingo[0][0] == 1 && bingo[1][1] == 1 && bingo[2][2] == 1) || (bingo[2][0] == 1 && bingo[1][1] == 1 && bingo[0][2] == 1)) then
  puts "Yes"
else
  puts "No"
end

# NとLを読み取る
input1 = gets.chomp
n = input1.split(" ")

# Nは受ける文字列の数、Lは文字の長さ
input2 = readlines(chomp: true).map(&:to_s)

puts input2.sort.join("")

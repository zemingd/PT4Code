#標準入力を取得
s = gets.chomp
t = gets.chomp

#tの末尾1文字を削除
t[t.length - 1] = ""

#sとtを比較
if (s == t)
    puts "Yes"
else
    puts "No"
end

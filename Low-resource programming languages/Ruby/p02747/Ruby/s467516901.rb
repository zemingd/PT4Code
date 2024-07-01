# 文字列 hi が 1 個以上繋がってできる文字列を、 hitachi文字列 と定義します。
# 例えば、 hi や hihi などは hitachi文字列 であり、 ha や hii は hitachi文字列 ではありません。
# 文字列 S が与えられるので、 S が hitachi文字列 かどうかを判定してください。

s = gets.chomp
result = true
j = 0
(s.length / 2).times do |i|
    if !(s[i+j] == "h" && s[i+1+j] == "i")
        result = false
        break
    end
    j += 1
end

if result
    puts "Yes"
else
    puts "No"
end
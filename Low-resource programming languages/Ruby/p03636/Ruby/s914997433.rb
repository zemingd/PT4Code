s = gets.chomp
num = s.length
m = s.length - 2
newStr = s[1, m]
newStr = newStr.length
l = s.length - 1
lastStr = s[l, 1]
p "#{s[0, 1]}#{newStr}#{lastStr}"
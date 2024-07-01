# Problem  https://atcoder.jp/contests/abc069/tasks/abc069_b
str = gets.chomp('\n')
strSize = str.size
firstChar = str[0]
lastChar = str[strSize-2]
# puts(firstChar)
# puts(lastChar)
answer = firstChar << (strSize-3).to_s << lastChar
puts(answer)


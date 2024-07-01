# https://atcoder.jp/contests/abc069/tasks/abc069_b
# Ruby 3rd Try

baseStr = gets.chomp.chars
firstChar = baseStr[0]
lastChar = baseStr[-1]
omitLength = baseStr.size-2
answer = firstChar + omitLength.to_s + lastChar
puts(answer)
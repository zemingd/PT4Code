# Problem https://atcoder.jp/contests/abc069/tasks/abc069_b
# Ruby 2nd Try
strWord = gets.chomp
firstChar = strWord[0]
lastChar = strWord[-1]
ommitLong = strWord.size-2
firstChar << ommitLong.to_s << lastChar
puts(firstChar)
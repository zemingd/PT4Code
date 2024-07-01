# http://d.hatena.ne.jp/tomomii+programming/20100614/p2
# chompってつけることでcで標準出力する時に改行しないようにしてくれるので後ろに文字列を連結できる
c = STDIN.gets.chomp

puts ["a","i","u","e","o"].find{|i| i == c} != nil ? "vowel" : "consonant"


# c = STDIN.gets.chomp
# puts ["a", "i", "u", "e", "o"].find{|i| i == c} != nil ? "vowel" : "consonant"
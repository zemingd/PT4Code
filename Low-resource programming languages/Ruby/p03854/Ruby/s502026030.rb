string = gets.chomp

# erase, eraser が含まれていたらスペースに変換する
string.gsub!(/eraser/, " ")
string.gsub!(/erase/, " ")

# dream, dreamerが含まれていたらスペースに変換する
string.gsub!(/dreamer/, " ")
string.gsub!(/dream/, " ")

# スペースを消す
string.gsub!(/ /, "")

# 結果の出力
puts string.empty? ? "YES" : "NO"

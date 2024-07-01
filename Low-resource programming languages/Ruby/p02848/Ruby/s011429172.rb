n = gets.chomp.to_i
keyword = gets.chomp
keyword= keyword.split(//)
 
# 暗号化した文字列を格納するための配列を定義
code = []
 
# keyword.charsで入力された文字列を１文字ずつ分解して配列へ
keyword.each do |char|
  num = (char.ord + n) # .ord で文字コードへ変換（数値化）しnつ分、シフトする
  code << num.chr # 文字コードを文字列へ戻し、配列codeに入れていく
end
 
# 配列codeに入った文字列を全て連結させて出力
puts "暗号化後: #{code.join("")}"
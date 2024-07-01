=begin
1, 受け取った文字列に scan を使用して、一致した文字列を配列にする
2, 1, の配列を count で数えて出力する
=end

gets
s = gets.to_s.chomp.scan("ABC")
puts s.count
#入力した文書の中にアルファベット数字をいくつはいっているかをわかるプログラム
text = gets("").downcase    #テキストに小文字をとる

for alphabet in "a".."z"           #sをA から　Zまで２６回繰り返す
  puts "#{alphabet} : #{text.26.times*(alphabet)}"      #まずAからZまで繰り返して　テキストの中のアルファベットをカウントする
end

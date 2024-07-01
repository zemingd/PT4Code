#使用ワードを格納していく配列
wordlist = []
#最後に使った単語の最後の文字を格納
last = ""
#使用単語数を入れる
num = gets.to_i

#単語数分ループを回し精査
for i in 1..num do
	#発言単語取得
  	word = gets.chomp #改行する
  	#初登場の単語か？
  	if wordlist.include?(word)
            puts "No"
            exit
        end
  #初登場でないなら配列に格納
  wordlist.push(word)
  #2回目以降から最後の文字と合ってるか？
  if i > 1
  	if word[0] != last
            puts "No"
            exit
    end
  end
  #２つの審査に通ればlast変数に最後の文字を入れる
  last = word[-1]
end

puts "Yes"

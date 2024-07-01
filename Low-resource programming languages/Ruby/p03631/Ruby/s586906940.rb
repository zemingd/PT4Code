#charsで文字列をEnumeratorオブジェクトを作り、
#to_aで配列にする
a = gets.strip.chars.to_a
while a.size > 1 do
#popの引数は後ろからその数だけ取り除く
  unless a.shift == a.pop
    puts 'No'
    exit
  end
end
puts 'Yes'

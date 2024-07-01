c = gets.chomp
# array でa~zの配列をつくる
array = ("a".."z").to_a
# find で条件に一致した要素を取り出す
# オブジェクト.find{ |要素| ブロック処理}

num = array.find_num(c)

puts array[num + 1]


